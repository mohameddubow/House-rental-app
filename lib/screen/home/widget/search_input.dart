import 'package:flutter/material.dart';

//------------THIS IS THE REFACTORED CODE FOR THE SEARCH BAR ON THE HOMEPAGE---------------------
class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: TextField(
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
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ),
          contentPadding: EdgeInsets.all(2),
        ),
      ),
    );
  }
}
