import 'package:flutter/material.dart';

class EqualContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: child(context),
    );
  }

  List<Widget> child(BuildContext context) {
    return [
      Container(
        color: Colors.yellow,
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.25,
        child: ProfileWidget(
            imageUrl:
                "https://s3.amazonaws.com/37assets/svn/1065-IMG_2529.jpg"),
      ),
      Expanded(
          child: Container(
        color: Colors.red,
        child: ProfileDescriptionWidget(),
      ))
    ];
  }
}

class ProfileWidget extends StatelessWidget {
  final String imageUrl;
  ProfileWidget({@required this.imageUrl}) {}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
        width: MediaQuery.of(context).size.height * .15,
        height: MediaQuery.of(context).size.height * .15,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                fit: BoxFit.fill, image: NetworkImage(imageUrl))));
  }
}

class ProfileDescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement createElement
    return SingleChildScrollView(
      child: Text(
        """
5+ years experience in customer relationship and account management. Adept at marketing automation and Salesforce automation. Proven track record of reversing customer pain points, especially during checkout. Team-player and an enthusiastic go-getter. Outgoing individual with a pleasant personality. 5+ years experience in customer relationship and account management. Adept at marketing automation and Salesforce automation. Proven track record of reversing customer pain points, especially during checkout. Team-player and an enthusiastic go-getter. Outgoing individual with a pleasant personality. 5+ years experience in customer relationship and account management. Adept at marketing automation and Salesforce automation. Proven track record of reversing customer pain points, especially during checkout. Team-player and an enthusiastic go-getter. Outgoing individual with a pleasant personality. 

5+ years experience in customer relationship and account management. Adept at marketing automation and Salesforce automation. Proven track record of reversing customer pain points, especially during checkout. Team-player and an enthusiastic go-getter. Outgoing individual with a pleasant personality. 5+ years experience in customer relationship and account management. Adept at marketing automation and Salesforce automation. Proven track record of reversing customer pain points, especially during checkout. Team-player and an enthusiastic go-getter. Outgoing individual with a pleasant personality. 5+ years experience in customer relationship and account management. Adept at marketing automation and Salesforce automation. Proven track record of reversing customer pain points, especially during checkout. Team-player and an enthusiastic go-getter. Outgoing individual with a pleasant personality.



               """,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
