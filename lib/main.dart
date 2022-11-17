import 'package:bmi_calculator/demo.dart';
import 'package:bmi_calculator/myclass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    home: ChangeNotifierProvider(create: (context) => myclass(),child: demo(),)
    ),
  );
}
