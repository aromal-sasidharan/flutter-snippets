import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widget_sample/Models/RouteModel.dart';
import 'Scenes/EqualContainer.dart';

void main() => runApp(MyApp());

Scaffold createScaffold({String title, Widget body}) {
  return Scaffold(
    appBar: AppBar(backgroundColor: Colors.blueGrey, title: Text(title)),
    body: body,
  );
}

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

class HomeWidget extends StatelessWidget {
  final List<RouteModel> items;
  HomeWidget({Key key, @required this.items}) : super(key: key);

  Widget routeItem(BuildContext context, RouteItem item) {
    return SizedBox(
        child: RaisedButton(
            child: Text(item.title),
            onPressed: () {
              Navigator.pushNamed(context, item.location);
            }),
        width: double.infinity);
  }

  Widget headerItem(BuildContext context, RouteHeader item) {
    return SizedBox(

        child: Container(child: Text(item.title),width: double.infinity, height: 40, alignment: Alignment.center,color: Colors.red));
  }

  @override
  Widget build(BuildContext context) {


    var listView = ListView.builder(
      itemBuilder: (context, position) {
        final item = items[position];
        if (item is RouteHeader) {
          return headerItem(context, item);
        } else if (item is RouteModel) {
          return routeItem(context, item);
        }
      },
      itemCount: routes.length,
    );

    return Container(
      child: listView,
      color: Colors.yellow,
      padding: EdgeInsets.all(20.0),
    );
  }
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
