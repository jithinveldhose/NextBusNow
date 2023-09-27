import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixIconPressed;
  // final double width; // Add a width parameter

  CustomTextField({
    required this.labelText,
    required this.hintText,
    this.suffixIcon,
    this.onSuffixIconPressed,
    // this.width = 200.0, // Default width, change as needed
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.05,
      // width: width, // Use the width parameter
      margin: EdgeInsets.symmetric(horizontal: screenSize.width *0.15),
      child: Form(
        child: TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            labelStyle:const TextStyle(
              color:Color.fromARGB(255, 149, 138, 138),
              fontWeight: FontWeight.w500,
            ),
            filled: true,
            fillColor: Colors.white,
            enabledBorder:const  OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFEB4335),
              ),
            ),
            focusedBorder:const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFEB4335),
              ),
            ),
            suffixIcon: suffixIcon != null
                ? IconButton(
                    icon: Icon(suffixIcon, color: Color(0xFFEB4335)),
                    onPressed:onSuffixIconPressed ,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
