import 'package:flutter/material.dart';
import 'package:flutter_catalog/Pages/login_page.dart';
import 'package:flutter_catalog/utiles/routes.dart';
import 'Pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",

      routes: {
        "/":(context)=>LoginPage(),
        MyRoutes.loginPageRoute :(context) => LoginPage(),
        MyRoutes.homePageRoute:(context) => HomePage(),
      },
    );
  }
}
