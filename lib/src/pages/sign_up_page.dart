import 'package:flutter/material.dart';
// Backbutton
import 'package:delivery_app2021/src/widgets/back_button.dart';
//Colors
import 'package:delivery_app2021/src/colors/colors.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        })
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text('Crear cuenta',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0
                ),
              ),
              _userNameInput(context,'Nombre de Usuario',TextInputType.text),
              _emailInput(context),
              _phoneInput(context),
              _dateOfBirthInput(context),
              _passwordInput(context),
              _signUpButton(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal:20.0, vertical: 20.0),
                  child: Text('Al hacer click en registrarse usted acepta los términos y condiciones sin reservacíon',
                  textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 13.0
                    ),
                  ),
                
              ),

            ]
          )
        )
      ),

    );
  }
}

Widget _userNameInput(BuildContext context,String nombre, TextInputType text ) {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: text,
      decoration: InputDecoration(
        hintText: nombre,
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    )
  );
}

Widget _emailInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    )
  );
}

Widget _phoneInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: 'Número de celular',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    )
  );
}

Widget _dateOfBirthInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        hintText: 'Fecha de nacimiento',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    )
  );
}

Widget _passwordInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    )
  );
}

Widget _signUpButton(BuildContext context) {
  return Container(
    width: 350,
    height: 45.0,
    margin: EdgeInsets.only(top: 20.0),
    child: RaisedButton(
      onPressed: () {

      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      color: Theme.of(context).accentColor,
      child: Text('Regístrate',style: TextStyle(
        color: Colors.white,
        fontSize: 17.0
          ),),
    )
  );
}
