import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  final List<ListItem> items;
  HomeWidget({Key key, @required this.items}) : super(key: key);

  Widget routeItem(BuildContext context, RouteModel item) {
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
      padding: EdgeInsets.all(20.0),
    );
  }
}

abstract class ListItem {}

class RouteHeader implements ListItem {
  final String title;
  RouteHeader({this.title});
}

class RouteModel implements ListItem {
  final String title;
  final String location;
  RouteModel({this.title, this.location});
}

List<ListItem> routes = [
  RouteHeader(title: "Containers"),
  RouteModel(title: "Stretch Container", location: '/strech_container'),
  RouteModel(title: "Partial Fill Container", location: '/strech_container'),
  RouteModel(title: "Partial", location: '/strech_container'),
  RouteModel(title: "Partial", location: '/strech_container'),
  RouteModel(title: "Stretch Container", location: '/strech_container'),
  RouteModel(title: "Partial Fill Container", location: '/strech_container'),
  RouteModel(title: "Partial", location: '/strech_container'),
  RouteHeader(title: "Containers2"),
  RouteModel(title: "Partial", location: '/strech_container'),
  RouteModel(title: "Stretch Container", location: '/strech_container'),
  RouteModel(title: "Partial Fill Container", location: '/strech_container'),
  RouteModel(title: "Partial", location: '/strech_container'),
  RouteModel(title: "Partial", location: '/strech_container'),
  RouteHeader(title: "List Items"),
  RouteModel(title: "Stretch Container", location: '/strech_container'),
  RouteModel(title: "Partial Fill Container", location: '/strech_container'),
  RouteModel(title: "Partial", location: '/strech_container'),
  RouteModel(title: "Partial", location: '/strech_container'),
  RouteHeader(title: "List Items2"),
  RouteModel(title: "Stretch Container", location: '/strech_container'),
  RouteModel(title: "Partial Fill Container", location: '/strech_container'),
  RouteModel(title: "Partial", location: '/strech_container'),
  RouteModel(title: "Partial", location: '/strech_container'),
];
