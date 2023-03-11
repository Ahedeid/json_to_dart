import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_to_dart/service/student_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Future<String> _lodeAssets() async{
    return await rootBundle.loadString('assets/student.json');
  }

  Future<void> _lodeData() async {
    String jsonString = await _lodeAssets();
    var parsedJson = jsonDecode(jsonString);
    Student student = Student.fromJson(parsedJson);
    print(student);
  }

  @override
  Widget build(BuildContext context) {
    _lodeData();
    return const Scaffold();
  }
}
