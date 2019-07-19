import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Scenes/EqualContainer.dart';






void main() => runApp(MyApp());

Scaffold createScaffold({String title, Widget body}){
  return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueGrey, title: Text(title)),    
      body: body,
    );
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        initialRoute: "/",
        routes: {
          "/" : (context) => createScaffold(title: "Home",body: Home()),
          "/strech_container" : (context) => createScaffold(title: "Strech Container",body: EqualContainer()),
        },
      );
  }

}

class RouteModel{
  String title;
  String location;
  RouteModel({this.title,this.location});
}

class Home extends StatelessWidget{

  

 @override
  Widget build(BuildContext context) {
    // TODO: implement build


    var expandedChilds = (Widget child) => SizedBox(child: child,width: double.infinity);
    
    var routes = [
      RouteModel(title: "Stretch Container",location: '/strech_container'), 
      RouteModel(title: "Partial Fill Container",location: '/strech_container'), 
      RouteModel(title: "Partial",location: '/strech_container'), 
       RouteModel(title: "Partial",location: '/strech_container'), 
    ];

    
    var raisedButton = (RouteModel item) => RaisedButton(child: Text(item.title), onPressed: () {
              Navigator.pushNamed(context, item.location);
          });
      
    var columns = Column(
      
      children: routes.map(raisedButton).map(expandedChilds).toList()
      ,

    );

    var content = Container(
      alignment: Alignment.center,
      child: Padding(child: columns, padding: EdgeInsets.all(20.0),
      ),
    );
    return content;
  }
}