import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Firebase Crashlytics"),),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                FirebaseCrashlytics.instance.crash();
              },
              child: const Text("Click here to crash app"),
            ),
            TextButton(
              onPressed: () {
                throw Error();
              },
              child: const Text("zoned error"),
            ),
          ],
        ),
      ),
    );
  }
}
