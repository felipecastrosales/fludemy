import 'package:flutter/material.dart'; 

class CustomSearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blue,
      style: TextStyle(color: Colors.grey[50]),
      decoration: InputDecoration(
        isDense: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[50]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[50]!),
        ),
        hintStyle: TextStyle(color: Colors.grey[50]),
        hintText: 'Type some search here',
        suffixIcon: IconButton(
          icon: Icon(Icons.search),
          color: Colors.grey[50],
          onPressed: (){},
        ),
      ),
    );
  }
}