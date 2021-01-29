import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login_page.dart';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white
      )
    );
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://media-cdn.grubhub.com/image/upload/c_scale,w_1650/q_50,dpr_auto,f_auto,fl_lossy,c_crop,e_vibrance:20,g_center,h_900,w_800/v1534256595/Onboarding/Burger.jpg'
                )
              )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur( sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.3)
              ),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text('ENTREGA RÁPIDA HASTA TU PUERTA',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0
                ))
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: Text('Establecer la ubicación exacta para encontrar los restaurantes adecuados cerca de usted',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17.0
                ))
              ),
              Container(
                width: 350,
                height: 45.0,
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  color: Theme.of(context).accentColor,
                  child: Text('Login',style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0
                      ),),
                )
              ),
              Container(
                width: 350,
                height: 45.0,
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: () {

                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  color: Theme.of(context).buttonColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/facebook.png'),
                          width: 20.0,
                          height: 20.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: Text('Conectate con Facebook',style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0
                        ),),
                      )
                    ],
                  ),
                )
              )
            ]
          ) 
        ],
      )
    );
  }
}