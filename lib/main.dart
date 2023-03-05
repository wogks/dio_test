import 'package:doi_test/dio_server.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(onPressed: ()=> Server().getRequest(), child: const Text('Get')),
          ElevatedButton(onPressed: () => Server().postRequest(), child: const Text('Post')),
          ElevatedButton(onPressed: () =>Server().getReqWzQuert(), child: const Text('Get with query')),
          ElevatedButton(onPressed: () =>Server().getSim(), child: const Text('GetSim')),
           ElevatedButton(onPressed: () =>Server().postSim(), child: const Text('PostSim')),
           
        ],
      ),
    );
  }
}
