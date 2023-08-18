import 'package:flutter/material.dart';
import 'package:watsap/colors.dart';
import 'package:watsap/responsive/responsiveLayout.dart';
import 'package:watsap/screens/mobile.dart';
import 'package:watsap/screens/web.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(19, 28, 33, 1),
      ),
      home: const ResponsiveLayOut(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
