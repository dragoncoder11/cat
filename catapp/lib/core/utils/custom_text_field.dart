import 'package:catapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final TextEditingController controller;
  final bool obscureText;

  const CustomTextField({
    Key? key,
    required this.icon,
    required this.hint,
    required this.controller,  this.obscureText=false,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $hint';
          }
          return null;
        },
        style: Styles.style9,
        decoration: InputDecoration(
          suffixIcon: Icon(icon, color: Colors.grey),
          hintText: hint,
          hintStyle: Styles.style9.copyWith(
            color: Colors.grey,
            fontSize: 14,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:const BorderSide(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}