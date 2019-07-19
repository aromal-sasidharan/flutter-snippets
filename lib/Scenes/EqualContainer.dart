


import 'package:flutter/material.dart';

class EqualContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: child(context),
    );
  }

  List<Widget> child(BuildContext context) {
    return [
      Expanded(
          child: Container(
        color: Colors.yellow,
      )),
      Expanded(
          child: Container(
        color: Colors.red,
      ))
    ];
  }
}
