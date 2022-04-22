import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

const primaryColor = Color.fromARGB(255, 32, 66, 138);
const textColor = Color(0xFF35364F);
const backgroundColor = Color(0xFFE6EFF9);
const redColor = Color(0xFFE85050);

const defaultPadding = 16.0;

OutlineInputBorder textFieldBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: primaryColor.withOpacity(0.1),
  ),
);

const emailError = 'Enter a valid email address';
const requiredField = "This field is required";

class PhoneValidator extends TextFieldValidator {
  PhoneValidator({String errorText = 'Enter a valid phone number'})
      : super(errorText);
  @override
  bool get ignoreEmptyValues => false;
  @override
  bool isValid(String? value) {
    return hasMatch(r'([0-9]{10})', value!);
  }
}

final passwordValidator = MultiValidator(
  [
    RequiredValidator(errorText: 'Password is required'),
    MinLengthValidator(8, errorText: 'Password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'Passwords must have at least one special character')
  ],
);
