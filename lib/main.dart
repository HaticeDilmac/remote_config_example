import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:remote_config_example/services/firebase_remote_config_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseRemoteConfigServices.initRemoteConfigFunction();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Visibility(//widget visible change - with remote config  
            visible: FirebaseRemoteConfigServices.widgetActivateKey,
            child: Container(
              color: Colors.pink,
              height: 200,
              width: 300,
              child: const Center(
                child:   Text(
                  'Hello World',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
