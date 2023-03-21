import 'package:flutter/material.dart';

import '../constants/colors.dart';

// ignore: must_be_immutable
class MytextField extends StatelessWidget {
  String text;
  MytextField({this.text});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 0.1)),
          labelText: text,
          contentPadding: EdgeInsets.only(top: 0, right: 15),
        ),
      ),
    );
  }
}
