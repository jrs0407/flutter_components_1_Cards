import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;
  const CustomTextFormField({
    super.key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon, this.keyboardType, required this.obscureText, required this.formProperty, required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      //initialValue: 'Jesus Rodriguez ',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value)=> formValues[formProperty]=value,
      //onChanged: (value) {
      //formValues[formProperty]=value;
      //print('Valores de formValues: ${formValues.toString()}');
      //},
      validator: (value){
        if (value!.length<3){
          return 'minimo 3 caracteres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        icon: Icon(icon),
        suffixIcon: Icon(suffixIcon),
      
      ),
      );
  }
}