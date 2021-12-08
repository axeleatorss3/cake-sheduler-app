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
            body: Column(
              children: [
                Expanded(
                    flex: 5,
                    child: Stack(children: [
                      Positioned(
                          bottom: 10,
                          left: 30,
                          child: Text(
                            'Welcome \nBack',
                            style: TextStyle(
                                color: Colors.deepPurple.shade300,
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          ))
                    ])),
                Expanded(
                    flex: 0,
                    child: Padding(
                        padding: EdgeInsets.all(20), child: CardFormLogin())),
                Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 30),
                                    child: Text(
                                      'Sign in',
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ))),
                            Expanded(
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.deepPurple),
                                    onPressed: () => null,
                                    child: Icon(Icons.arrow_forward)))
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                child: Center(
                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                child: Center(
                                  child: Text(
                                    'Forgot password',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ))
              ],
            ));
      },
    );
  }
}
