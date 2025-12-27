import 'package:flutter/material.dart';

import 'package:stepexpertx/core/constant/colors.dart';

const authdecoration = InputDecoration(
  fillColor: textFieldFilledColor,
  filled: true,
  hintText: "username",
  hintStyle: TextStyle(color: Colors.grey),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
    borderSide: BorderSide(width: 3, color: Colors.blue),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
    borderSide: BorderSide(color: textFieldFilledColor),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
    borderSide: BorderSide(color: textFieldFilledColor),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
    borderSide: BorderSide(color: primaryColor),
  ),
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
    borderSide: BorderSide(color: textFieldFilledColor),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
    borderSide: BorderSide(color: primaryColor),
  ),
);
