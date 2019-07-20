abstract class RouteModel {}

class RouteHeader implements RouteModel {
  final String title;
  RouteHeader({this.title});
}

class RouteItem implements RouteModel {
  final String title;
  final String location;
  RouteItem({this.title, this.location});
}
