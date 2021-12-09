import 'package:cake_scheduler/components/card_form.dart';
import 'package:cake_scheduler/components/pink_curve.dart';
import 'package:cake_scheduler/components/purple_circle.dart';
import 'package:cake_scheduler/views/Login/sing_up_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _animationController;
  FocusNode myFocusNode;

  @override
  void initState() {
    final _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
    _animationController.forward(from: 0.0);
    myFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        extendBody: true,
        body: SingleChildScrollView(
            child: Container(
                height: MediaQuery.maybeOf(context).size.height,
                width: MediaQuery.maybeOf(context).size.width,
                child: Column(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Stack(children: [
                          SizedBox(
                            height: MediaQuery.maybeOf(context).size.height,
                            width: MediaQuery.maybeOf(context).size.width,
                            child: CustomPaint(
                              painter: CurvePainter(),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.maybeOf(context).size.height,
                            width: MediaQuery.maybeOf(context).size.width,
                            child: CustomPaint(
                              painter: CurvePainter2(),
                            ),
                          ),
                          Positioned(
                              bottom: 40,
                              left: 30,
                              child: FadeTransition(
                                  opacity: _animation,
                                  child: Text(
                                    'Welcome \nBack',
                                    style: TextStyle(
                                        color: Colors.deepPurple.shade300,
                                        fontSize: 35,
                                        fontWeight: FontWeight.w500),
                                  )))
                        ])),
                    Expanded(
                        flex: 0,
                        child: Padding(
                            padding: EdgeInsets.all(20),
                            child: CardFormLogin(myFocusNode))),
                    Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(right: 0),
                                        child: Text(
                                          'Sign in',
                                          style: TextStyle(
                                            color: Colors.deepPurple,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                          ),
                                        ))),
                                Expanded(
                                    child: Container(
                                        height: 40,
                                        margin: EdgeInsets.all(10),
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.deepPurple,
                                                minimumSize: Size(10, 10),
                                                shape: StadiumBorder(),
                                                elevation: 3.0),
                                            onPressed: () => null,
                                            child: Icon(Icons.arrow_forward))))
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () => showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return SingUpModal();
                                        }),
                                    child: Center(
                                      child: Text(
                                        'Sign up',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            decoration:
                                                TextDecoration.underline),
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
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ))
                  ],
                ))));
  }
}
