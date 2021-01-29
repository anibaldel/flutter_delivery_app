import 'package:flutter/material.dart';
//Colors
import 'package:delivery_app2021/src/colors/colors.dart';
//Widgets
import 'package:delivery_app2021/src/widgets/back_button.dart';
//UI
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.black));
      
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                width: double.infinity,
                height: 250.0,
                fit: BoxFit.cover,
                image: NetworkImage('https://cocina-casera.com/wp-content/uploads/2018/05/Platos-tipicos-de-bolivia-3.jpg')
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: backButton(context, Colors.white),
              )
            ]
          ),
          Transform.translate(
            offset: Offset(0.0, -20.0),
            child: Container(
              width: double.infinity,
              //height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      Text("Bienvenido", style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0
                      )),
                      Text("Inicié sesión con su cuenta", style: TextStyle(
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0
                      )),
                      _emailInput(),
                      _passwordInput(),
                      _buttonLogin(context),
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.popAndPushNamed(context, 'forgot-password');
                          },
                          child: Text('Olvidaste tu contraseña?',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0
                            ),
                          ),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('No tienes una cuenta?',style: TextStyle(
                              color: gris,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'sign-up');
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text('Registrate',style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      )
                    ]
                  ), 
                ),
              )
            ),
          )
        ]
      )
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 30),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText:'Email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        ) 
      ),
    )
  );
}

Widget _passwordInput() {
  return Container(
    margin: EdgeInsets.only(top: 15),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText:'Password',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        ) 
      ),
    )
  );
}

Widget _buttonLogin(BuildContext context) {
  return Container(
    width: 350,
    height: 45.0,
    margin: EdgeInsets.only(top: 20.0),
    child: RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'tabs');
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      color: Theme.of(context).accentColor,
      child: Text('Login',style: TextStyle(
        color: Colors.white,
        fontSize: 17.0
          ),),
    )
  );

}
