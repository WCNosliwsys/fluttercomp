import 'package:flutter/material.dart';
import 'package:flutter_components/src/pages/alert_page.dart';
import 'package:flutter_components/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "mi app components",
      debugShowCheckedModeBanner: false,
     // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings setting){
        print("ongenerateroute ${setting.name}");
        return MaterialPageRoute(
          builder: (BuildContext context)=> AlertPage()
        );
      },

    );
  }

}
