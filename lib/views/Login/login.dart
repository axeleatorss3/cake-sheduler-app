import 'package:cake_scheduler/components/card_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.pink[50],
          extendBody: true,
          body: Stack(
            children: [
              Center(
                  child: Column(children: [
                Text(
                  'Welcome \nBack',
                  style: TextStyle(
                      color: Colors.purple[100],
                      fontSize: 40,
                      letterSpacing: 5,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    child: const CardFormLogin())
              ])),
            ],
          ),
        );
      },
    );
  }
}
