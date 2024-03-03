import 'package:flutter/material.dart';

class CustomizedTextField extends StatelessWidget {
  final TextEditingController myController;
  final String? hintText;
  final bool? isPassword;
  const CustomizedTextField(
      {super.key, required this.myController, this.hintText, this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        obscureText: isPassword ?? true,
        controller: myController,
        decoration: InputDecoration(
            /*suffixIcon: IconButton( 
            icon: Icon(Icons.remove_red_eye),
            onPressed: () {
              // Implement your functionality here to remove red
            },),*/
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10)),
            fillColor: Color.fromARGB(255, 211, 226, 243),
            filled: true,
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
