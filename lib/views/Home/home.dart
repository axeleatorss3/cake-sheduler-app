import 'package:cake_scheduler/components/pink_curve.dart';
import 'package:cake_scheduler/components/purple_circle.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
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
      body: SizedBox(
        height: MediaQuery.maybeOf(context).size.height,
        width: MediaQuery.maybeOf(context).size.width,
        child: Center(
          child: Text('homepage'),
        ),
      ),
    );
  }
}
