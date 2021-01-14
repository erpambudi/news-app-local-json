import 'package:dicoding_news_app/pages/pages.dart';
import 'package:dicoding_news_app/theme/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',

      ///SET TEMA
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        primarySwatch: Colors.blue,
        textTheme: myTextTheme,
        buttonTheme: ButtonThemeData(
          buttonColor: secondaryColor,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0))),
        ),
        appBarTheme: AppBarTheme(
            textTheme: myTextTheme.apply(bodyColor: Colors.black),
            elevation: 0),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      ///SET ROUTE
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        ArticleDetailPage.routeName: (context) => ArticleDetailPage(
            article: ModalRoute.of(context).settings.arguments),
        ArticleWebView.routeName: (context) => ArticleWebView(
              url: ModalRoute.of(context).settings.arguments,
            )
      },
    );
  }
}
