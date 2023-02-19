import 'package:flutter/material.dart';

InputDecoration inputDecor(String text) {
  return InputDecoration(
    label: Text(
      text,
      style: const TextStyle(
        fontSize: 13,
        color: Colors.grey,
      ),
    ),
    border: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
  );
}

TextButton textButton(Color color, IconData icon, String text, Color textColor){
  return TextButton(
    onPressed: (){

    },
    style: TextButton.styleFrom(
      backgroundColor: color,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 25,
            color: textColor,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: 15,
              color: textColor,
            ),
          ),
        ],
      ),
    ),
  );
}

Container textButtonTwo(String text, double width){
  return Container(
    width: width,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          letterSpacing: 1.1,
          fontSize: 20,
        ),
      ),
    ),
  );
}