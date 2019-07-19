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
        "/": (context) => createScaffold(title: "Home", body: HomeWidget()),
        "/strech_container": (context) =>
            createScaffold(title: "Strech Container", body: EqualContainer()),
      },
    );
  }
}

class RouteModel {
  String title;
  String location;
  RouteModel({this.title, this.location});
}

class HomeWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeWidgetState();
  }

}

class HomeWidgetState extends State<HomeWidget> {
  var routes = [
    RouteModel(title: "Stretch Container", location: '/strech_container'),
    RouteModel(title: "Partial Fill Container", location: '/strech_container'),
    RouteModel(title: "Partial", location: '/strech_container'),
    RouteModel(title: "Partial", location: '/strech_container'),
    RouteModel(title: "Stretch Container", location: '/strech_container'),
    RouteModel(title: "Partial Fill Container", location: '/strech_container'),
    RouteModel(title: "Partial", location: '/strech_container'),
    RouteModel(title: "Partial", location: '/strech_container'),
    RouteModel(title: "Stretch Container", location: '/strech_container'),
    RouteModel(title: "Partial Fill Container", location: '/strech_container'),
    RouteModel(title: "Partial", location: '/strech_container'),
    RouteModel(title: "Partial", location: '/strech_container'),
    RouteModel(title: "Stretch Container", location: '/strech_container'),
    RouteModel(title: "Partial Fill Container", location: '/strech_container'),
    RouteModel(title: "Partial", location: '/strech_container'),
    RouteModel(title: "Partial", location: '/strech_container'),
    RouteModel(title: "Stretch Container", location: '/strech_container'),
    RouteModel(title: "Partial Fill Container", location: '/strech_container'),
    RouteModel(title: "Partial", location: '/strech_container'),
    RouteModel(title: "Partial", location: '/strech_container'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var itemWidget = (BuildContext context, int position) {
      return SizedBox(
          child: RaisedButton(
              child: Text(routes[position].title),
              onPressed: () {
                Navigator.pushNamed(context,routes[position].location);
              }),
          width: double.infinity);
    };
    
    var listView = ListView.builder(
      itemBuilder: itemWidget,
      itemCount: routes.length,
    ); 

    return Container(child:listView,
    padding: EdgeInsets.all(20.0),
    );
  }
}
