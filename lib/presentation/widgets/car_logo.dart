import 'package:flutter/material.dart';

class ScrollableCarNamesRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Enables horizontal scrolling
      child: Row(
        children: [
          buildCarContainer('Toyota'),
          SizedBox(width: 16), // Adds space between containers
          buildCarContainer('Honda'),
          SizedBox(width: 16),
          buildCarContainer('Ford'),
          SizedBox(width: 16),
          buildCarContainer('Chevrolet'),
          SizedBox(width: 16),
          buildCarContainer('Nissan'),
        ],
      ),
    );
  }

  // A helper function to build each car name inside a styled Container
  Widget buildCarContainer(String carName) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xffF3F3F3),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Text(
        carName,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold, // Makes the text bold
          color: Colors.black,
        ),
      ),
    );
  }
}
