import 'package:delivery_app2021/src/widgets/back_button.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return backButton(context, Colors.black);
          },
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text('Olvidaste tu contraseña?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 30.0
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Por favor digita tu email. Tu recibiras un link para crear un nuevo password via email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0
                  ),
                ),
              ),
              _emailInput(),
              _sendButton(context),
            ]
          ),
        ),
      ),
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
Widget _sendButton(BuildContext context) {
  return Container(
    width: 350,
    height: 45.0,
    margin: EdgeInsets.only(top: 20.0),
    child: RaisedButton(
      onPressed: () {
        _showAlerta(context);
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      color: Theme.of(context).accentColor,
      child: Text('Enviar',style: TextStyle(
        color: Colors.white,
        fontSize: 17.0
          ),),
    )
  );
}

void _showAlerta(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        content: Container(
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/lock.jpg'),
                  width: 100.0,
                  height: 100.0,
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text('Tu password ha sido Reiniciado',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Text('Tu recibiras dentro de poco un email con un código para configurar tu nuevo password',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0
                    ),
                  ),
                ),
                _doneButton(context)
            ],
          ),
        ),
      );
    }
  );
}

Widget _doneButton(BuildContext context) {
  return Container(
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
      child: Text('Hecho',style: TextStyle(
        color: Colors.white,
        fontSize: 17.0
          ),),
    )
  );

}