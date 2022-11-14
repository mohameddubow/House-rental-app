import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//------------THIS IS THE REFACTORED CODE FOR THE SEARCH BAR ON THE HOMEPAGE---------------------
class SearchInput extends StatefulWidget {

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  List<Map> searchResult=[];
  TextEditingController searchController = TextEditingController();


  void searchPrice()async{
    setState(() {
      searchResult=[];

    });
    await FirebaseFirestore.instance.collection('Apartments').where('price',isGreaterThanOrEqualTo: searchController.text).get().then((value) {
      if(value.docs.length<1){
       // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('No Apartment Found in the Location Specified'),));

        return;
      }

      value.docs.forEach((apartment) {
        searchResult.add(apartment.data());
      });
      print(searchResult);
    });

  }
  void searchLocation()async{
    setState(() {
      searchResult=[];

    });
    await FirebaseFirestore.instance.collection('Apartments').where('location',isGreaterThanOrEqualTo: searchController.text).get().then((value) {
      if(value.docs.length<1){
      //  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('No Apartment Found in the Location Specified'),));

        return;
      }

      value.docs.forEach((apartment) {
        searchResult.add(apartment.data());
      });

      print(searchResult);
    });
  }

  void searchName()async{
    setState(() {
      searchResult=[];

    });
    await FirebaseFirestore.instance.collection('Apartments').where('name',isGreaterThanOrEqualTo: searchController.text).get().then((value) {
      if(value.docs.length<1){
      //  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('No Apartment Found in the Location Specified'),));

        return;
      }

      value.docs.forEach((apartment) {
        searchResult.add(apartment.data());
      });

      print(searchResult);
    });
  }


  void onSearch()async{
    searchLocation();
   // searchName();
  //  searchPrice();

    print(searchResult);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(150),
          ),
          hintText: 'Search your home...',
          prefixIcon: Container(
            padding: EdgeInsets.all(4),
            child:
                //----------------SEARCH ICON--------------------------
                IconButton(
              onPressed: onSearch,
              icon: Icon(Icons.search),
            ),
          ),
          contentPadding: EdgeInsets.all(2),
        ),
      ),
    );
  }
}
