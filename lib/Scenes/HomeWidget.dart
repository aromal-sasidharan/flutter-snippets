



import 'package:flutter/material.dart';
import 'package:flutter_widget_sample/Models/RouteModel.dart';

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
      itemCount: items.length,
    );

    return Container(
      child: listView,
      color: Colors.yellow,
      padding: EdgeInsets.all(20.0),
    );
  }
}
