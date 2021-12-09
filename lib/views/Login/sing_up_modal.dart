import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class SingUpModal extends StatefulWidget {
  const SingUpModal({Key key}) : super(key: key);

  @override
  _SingUpModalState createState() => _SingUpModalState();
}

class _SingUpModalState extends State<SingUpModal> {
  PageController _pageController;
  double currentPage = 0;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page;
      });
    });

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 2,
        decoration: BoxDecoration(
            color: Colors.pink[50],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 30, top: 30),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Get Stared',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.deepPurple, fontSize: 35),
                  ),
                ),
                Container(
                  height: 120,
                  child: PageView(
                    onPageChanged: (_) {},
                    controller: _pageController,
                    children: [
                      Column(children: [
                        TextField(
                          decoration: InputDecoration(hintText: 'first name'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                            decoration: InputDecoration(hintText: 'last name')),
                      ]),
                      Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(hintText: 'email'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                              enableSuggestions: false,
                              autocorrect: false,
                              decoration:
                                  InputDecoration(hintText: 'password')),
                        ],
                      )
                    ],
                  ),
                ),
                DotsIndicator(
                  dotsCount: 2,
                  position: currentPage,
                  decorator: DotsDecorator(
                    activeColor: Colors.deepPurple,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(children: [
                  Expanded(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.only(right: 10),
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.all(10),
                                  primary: Colors.deepPurple,
                                  shape: CircleBorder(),
                                  elevation: 3.0),
                              onPressed: () => Navigator.pop(context),
                              child: Icon(
                                Icons.arrow_forward,
                                size: 40,
                              ))))
                ])
              ],
            ),
          ),
        ));
  }
}
