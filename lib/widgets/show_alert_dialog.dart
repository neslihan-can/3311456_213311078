import 'package:flutter/material.dart';

showAlertDialog(BuildContext context, String title, String content) {
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(content),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
