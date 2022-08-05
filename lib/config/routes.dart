import 'package:floward_task/modules/main/view/screens/user_posts_screen.dart';
import 'package:floward_task/modules/main/view/screens/users_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:floward_task/utils/logger.dart';



// this class contains all routes names
class AppRouter {
 static Route<dynamic> generateRoute(RouteSettings settings) {

   PageRouteBuilder  pageRouteBuilder(Widget page) {

     return PageRouteBuilder(
         settings: settings,
         pageBuilder: (_, __, ___) => page,
         transitionsBuilder: (_, a, __, c) =>
             FadeTransition(opacity: a,child: c,)
     );
   }
   Logger.log(settings.name, tag: 'Route');
     switch (settings.name){
       case Routes.userPostsScreen:
         return pageRouteBuilder(const UserPostsScreen());

       default:
            return pageRouteBuilder(const UsersScreen());



     }
   }
  }




class Routes {
  static const String userPostsScreen = "/user_posts_screen";

}
