import 'package:flutter/material.dart';
void showSnackBarMsg(BuildContext context, String message){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}


