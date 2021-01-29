import 'package:flutter/cupertino.dart';

//pages
import 'package:delivery_app2021/src/pages/welcome_page.dart';
import 'package:delivery_app2021/src/pages/login_page.dart';
import 'package:delivery_app2021/src/pages/forgot_password.dart';
import 'package:delivery_app2021/src/pages/sign_up_page.dart';
import 'package:delivery_app2021/src/tabs/tabs_page.dart';

final routes = <String,WidgetBuilder> {
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgot-password' : (BuildContext context) => ForgotPassword(),
  'sign-up' : (BuildContext context) => SignUpPage(),
  'tabs' : (BuildContext context) => TabsPage()
};