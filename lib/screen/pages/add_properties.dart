import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';

//-------------------ADD PROPERTY FOR THE ADMIN SECTION-------------------------------

class AddProperty extends StatefulWidget {
  static String id = 'add_products_screen';

  @override
  State<AddProperty> createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController propertyNameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  File? image; //---This is a variable for storing the image of the file Picker

  //-----------This method picks an image from the gallery of the device-----------------
  Future pickImage() async {
    //----------TRY/CATCH BLOCK--------------------
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);

      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image:$e');
      //--------SHOWS A TOAST MESSAGE THAT IMAGE HAS NOT BEEN PICKED
      Fluttertoast.showToast(
        msg: "You have not picked an image",
        textColor: Colors.black,
        backgroundColor: Colors.white,
      );
    }
  }

  //-----------------This method updloads an image to the Cloud Firestore------------------
  Future uploadFile() async {
    //If there is no image,return null
    if (image == null) return;

    //--------------This references the root of the firebase storage----------------------
    Reference referenceRoot = FirebaseStorage.instance.ref();

    //-----------This one we enter the firestore storage root and create a collection called images----------
    Reference referenceDirImages = referenceRoot.child('images');

    //----------We then create a reference of the image being uploaded to the images collection---------
    Reference referenceImageToupload = referenceDirImages.child(image!.path);

    try {
      //--------------UPLOADS THE IMAGE--------------------
      await referenceImageToupload.putFile(
        File(image!.path),
      );

      //---------------GETS THE URL OF THE IMAGE------------------
      imageUrl = await referenceImageToupload.getDownloadURL();
    } catch (error) {}
    print(image!.path);
  }

  String imageUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Add My Property'),
      ),

      //----------this is the main body of the Add products page--------------
      body: Form(
        key: _formKey,
        child: ListView(
          //-----------This is ListView----------------------
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:
                        //----------This is the button for picking an image from the device-----------
                        OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            color: Colors.grey.withOpacity(0.5), width: 1.9),
                      ),
                      onPressed: () async {
                        //----------THE pickImage METHOD IS CALLED--------------
                        pickImage();
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(14, 40, 14, 40),
                        child: image != null
                            ? Image.file(image!)
                            : Icon(
                                Icons.add,
                                color: Colors.grey,
                              ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //--------------This text specifies the maximum length of the property name--------------
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Enter a property name not more than 30 characters at maximum',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),

            //-------------------*********THE START OF THE TEXTFIELDS***********--------------------
            Padding(
              padding: const EdgeInsets.all(12.0),
              //--------THIS TEXTFORMFIELD IS FOR THE PROPERTY NAME
              child: TextFormField(
                controller: propertyNameController,
                decoration: InputDecoration(hintText: 'Property name'),
                validator: (value) {
                  //----------IF THE VALUE OF THE TEXTFIELD IS EMPTY, THEN RETURN AN ERROR MESSAGE------
                  if (value!.isEmpty) {
                    Fluttertoast.showToast(
                      msg: "You must enter the property name",
                      fontSize: 16.0,
                      textColor: Colors.white,
                      backgroundColor: Colors.black,
                    );
                  } else if (value.length > 30) {
                    Fluttertoast.showToast(
                      msg: "Property name cannot be more than 30 characters",
                      fontSize: 16.0,
                      textColor: Colors.white,
                      backgroundColor: Colors.black,
                    );
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              //-----------------THIS TEXTFORMFIELD IS FOT THE RENT PRICE---------------
              child: TextFormField(
                controller: priceController,
                decoration: InputDecoration(hintText: 'Enter rent per month'),
                validator: (value) {
                  //------IF THE VALUE OF THE RENT TEXTFIELD IS EMPTY, THEN AN ERROR MESSAGE IS DISPLAYED
                  if (value!.isEmpty) {
                    Fluttertoast.showToast(
                      msg: "You must enter the rent price",
                      fontSize: 16.0,
                      textColor: Colors.white,
                      backgroundColor: Colors.black,
                    );
                    //----------IF THE RENT IS LEES THAN 0, THEN AN ERROR MESSAGE IS DISPLAYED
                  } else if (value.length < 0) {
                    Fluttertoast.showToast(
                      msg: "The rent cannot be negative",
                      fontSize: 16.0,
                      textColor: Colors.white,
                      backgroundColor: Colors.black,
                    );
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child:
                  //--------------THIS TEXTFIELD IS FOR THE LOCATION--------------------
                  TextFormField(
                controller: locationController,
                decoration: InputDecoration(
                  hintText: 'Property Location ',
                ),
                validator: (value) {
                  //--------IF THE VALUE OF THE TEXTFIELD IS EMPTY, THEN RETURN AN ERROR MESSAGE-----
                  if (value!.isEmpty) {
                    Fluttertoast.showToast(
                      msg: "You must enter the location",
                      fontSize: 16.0,
                      textColor: Colors.white,
                      backgroundColor: Colors.black,
                    );
                    //ELSE IF THE VALUE IS GREATER THAN 30 CHARACTERS, RETURN AN ERROR MESSAGE
                  } else if (value.length > 30) {
                    Fluttertoast.showToast(
                      msg: "Location name cannot be more than 30 characters",
                      fontSize: 16.0,
                      textColor: Colors.white,
                      backgroundColor: Colors.black,
                    );
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child:
                  //-----------THIS TEXTFIELD IS FOR THE PHONE NUMBER--------------------
                  TextFormField(
                controller: phoneNumberController,
                decoration: InputDecoration(
                  hintText: 'Enter Your Phone Number ',
                ),
                validator: (value) {
                  //------------IF VALUE IS EMPTY, DISPLAY AN ERROR MESSAGE
                  if (value!.isEmpty) {
                    Fluttertoast.showToast(
                      msg: "Please enter the phone number",
                      fontSize: 16.0,
                      textColor: Colors.white,
                      backgroundColor: Colors.black,
                    );

                    //--------ELSE IF THE PHONE NUMBER IS LESS THAN 10 CHARACTERS, DISPLAY AN ERROR MESSAGE
                  } else if (value.length < 10) {
                    Fluttertoast.showToast(
                      msg: "Phone number should be more than 10 characters",
                      fontSize: 16.0,
                      textColor: Colors.white,
                      backgroundColor: Colors.black,
                    );
                  }
                },
              ),
            ),

//---------------------******* THE END OF THE TEXTFIELDS************---------------------------------

            //-------This down below is the Button for uploading the image and the fellow properties to the database
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  //THE uploadFile METHOD GETS CALLED
                  uploadFile();
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: const Text(
                    'Upload',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
