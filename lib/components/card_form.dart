import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardFormLogin extends StatefulWidget {
  const CardFormLogin() : super();

  @override
  _CardFormLoginState createState() => _CardFormLoginState();
}

@override
void initState() {}

class _CardFormLoginState extends State<CardFormLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: 'Email',
                fillColor: Colors.grey[350],
                hoverColor: Colors.white,
                filled: false,
                contentPadding: EdgeInsets.all(20)),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'Password',
                filled: false,
                contentPadding: EdgeInsets.all(20)),
          ),
        ],
      ),
    );
  }
}
