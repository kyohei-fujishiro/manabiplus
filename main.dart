import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:manabiplus/home_screen.dart';
import 'package:manabiplus/option/option_text_plan.dart';
import 'package:manabiplus/sinup/sinup_page.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: '学びPlus',
      theme: ThemeData(

        primarySwatch: Colors.green,
        //Family:,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/': (BuildContext context) => LoginPage(),

      },

    );

  }

}







