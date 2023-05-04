



import 'package:flutter/material.dart';
import 'app_pages.dart';

class Routes {

  static Route? onGenerateRoute(RouteSettings settings){

    switch(settings.name){

      // case AppRoute.initial:
      //   return MaterialPageRoute(builder: (BuildContext context) =>   const SplashView());

      // case AppRoute.login:
      //   return MaterialPageRoute(builder: (BuildContext context) =>  MultiBlocProvider(
      //     providers: [
      //       BlocProvider(create: (context) => LoginCubit()),
      //       BlocProvider(create: (context) => GoogleLoginCubit()),
      //       BlocProvider(create: (context) => AppleLoginCubit()),
      //     ],
      //     child: LoginView(),
      //   ));
      //
      // case AppRoute.signup:
      //   return MaterialPageRoute(builder: (BuildContext context) => BlocProvider(
      //     create: (context) => RegisterCubit(), child: SignupView(),
      //   ));




      default:
        return null;
    }

  }
}


