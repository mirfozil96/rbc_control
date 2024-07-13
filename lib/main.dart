import 'package:flutter/material.dart';
import 'package:rbc_control/setup.dart';
import 'src/app.dart';

Future<void> main() async {
  await setup();
  runApp(const App());
}


