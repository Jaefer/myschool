import 'package:myschool/ui/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:myschool/constants/route_names.dart';
import 'package:myschool/ui/views/login_view.dart';
import 'package:myschool/ui/views/signup_view.dart';
import 'package:myschool/ui/views/create_post_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: LoginView(),
      );
    case SignUpViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: SignUpView(),
      );
    case HomeViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: HomeView(),
      );
      case CreatePostViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: CreatePostView(),
      );
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
  }
}

PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
  return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow);
}