import 'package:flutter/material.dart';

class CustomizedTextField2 extends StatelessWidget {
  final TextEditingController myController;
  final String? hintText;
  final bool? isPassword;
  const CustomizedTextField2(
      {super.key, required this.myController, this.hintText, this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        keyboardType: isPassword!
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
        enableSuggestions: isPassword! ? false : true,
        autocorrect: isPassword! ? false : true,
        obscureText: isPassword ?? true,
        controller: myController,
        decoration: InputDecoration(
            suffixIcon: isPassword!
                ? IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Color.fromARGB(255, 157, 169, 201),
                    ),
                    onPressed: () {
                      // Implement your functionality here to remove red
                    },
                  )
                : null,
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
