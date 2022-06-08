import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final String hintText;
  final Function onFieldSubmitted;
  final Function onSaved;
  final Function validator;
  final String? labelText;
  final String? errorMessage;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool? obscureText;

  const FormTextField({
    Key? key,
    required this.hintText,
    required this.onFieldSubmitted,
    required this.onSaved,
    required this.validator,
    this.labelText,
    this.errorMessage,
    this.focusNode,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputAction,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          errorText: errorMessage,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: Colors.grey.shade100,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
          ),
          labelStyle: const TextStyle(color: Colors.black54),
          hintStyle: const TextStyle(color: Colors.black54),
        ),
        onFieldSubmitted: (value) => onFieldSubmitted(),
        onSaved: (value) => onSaved(value),
        validator: (value) => validator(value),
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        enableSuggestions: false,
        autocorrect: false,
        focusNode: focusNode,
      ),
    );
  }
}
