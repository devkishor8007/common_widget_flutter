import 'package:flutter/material.dart';

class CustomTextFormWidget extends StatelessWidget {
  final TextEditingController controllerName;
  final String? Function(String?)? validator;
  final void Function()? onIconPressed;
  const CustomTextFormWidget(
      {super.key,
      required this.controllerName,
      required this.validator,
      required this.onIconPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controllerName,
        validator: validator,
        decoration: InputDecoration(
          hintText: 'enter your name',
          suffixIcon: IconButton(
            onPressed: onIconPressed,
            icon: const Icon(Icons.search),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
          ),
        ),
      ),
    );
  }
}
