import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widget_sample/Models/RouteModel.dart';
import 'Scenes/EqualContainer.dart';
import 'Scenes/HomeWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) =>
            createScaffold(title: "Home", body: HomeWidget(items: routes)),
        "/strech_container": (context) =>
            createScaffold(title: "Strech Container", body: EqualContainer()),
      },
    );
  }
}

Scaffold createScaffold({String title, Widget body}) {
  return Scaffold(
    appBar: AppBar(backgroundColor: Colors.blueGrey, title: Text(title)),
    body: body,
  );
}

List<RouteModel> routes = [
  RouteHeader(title: "Containers"),
  RouteItem(title: "Stretch Container", location: '/strech_container'),
  RouteItem(title: "Partial Fill Container", location: '/strech_container'),
  RouteItem(title: "Partial", location: '/strech_container'),
  RouteItem(title: "Partial", location: '/strech_container'),
  RouteItem(title: "Stretch Container", location: '/strech_container'),
  RouteItem(title: "Partial Fill Container", location: '/strech_container'),
  RouteItem(title: "Partial", location: '/strech_container'),
  RouteHeader(title: "Containers2"),
  RouteItem(title: "Partial", location: '/strech_container'),
  RouteItem(title: "Stretch Container", location: '/strech_container'),
  RouteItem(title: "Partial Fill Container", location: '/strech_container'),
  RouteItem(title: "Partial", location: '/strech_container'),
  RouteItem(title: "Partial", location: '/strech_container'),
  RouteHeader(title: "List Items"),
  RouteItem(title: "Stretch Container", location: '/strech_container'),
  RouteItem(title: "Partial Fill Container", location: '/strech_container'),
  RouteItem(title: "Partial", location: '/strech_container'),
  RouteItem(title: "Partial", location: '/strech_container'),
  RouteHeader(title: "List Items2"),
  RouteItem(title: "Stretch Container", location: '/strech_container'),
  RouteItem(title: "Partial Fill Container", location: '/strech_container'),
  RouteItem(title: "Partial", location: '/strech_container'),
  RouteItem(title: "Partial", location: '/strech_container'),
];
