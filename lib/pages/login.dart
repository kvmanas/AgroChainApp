import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new ExactAssetImage('assets/1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
              decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                colors: <Color>[
                  const Color.fromRGBO(122, 230, 103, 0.2),
                  const Color.fromRGBO(54, 122, 42, 0.7),
                ],
                stops: [0.2, 1.0],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 1.0),
              )),
              child: SafeArea(
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Padding(
                            padding: EdgeInsets.all(30),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Hero(
                                      tag: 'logo',
                                      child: Image.asset('assets/logo.png')),
                                ),
                                Expanded(
                                    flex: 7,
                                    child: Hero(
                                        tag: 'name',
                                        child: Image.asset(
                                            'assets/agrochain.png'))),
                              ],
                            ))),
                    Expanded(
                      flex: 6,
                      child: Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: TextFormField(
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Theme.of(context)
                                          .cursorColor
                                          .withOpacity(0.9)),
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    hintText: 'Mobile No.',
                                    hintStyle: TextStyle(
                                        color: Theme.of(context)
                                            .cursorColor
                                            .withOpacity(0.5),
                                        fontSize: 15.0),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 20),
                                    filled: true,
                                    fillColor: Theme.of(context).accentColor,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 0.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: 0.0),
                                    ),
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                      borderSide: new BorderSide(
                                          color: Theme.of(context).cursorColor),
                                    ),
                                    //fillColor: Colors.green
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              InkWell(
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 3,
                                  height: 60.0,
                                  alignment: FractionalOffset.center,
                                  decoration: new BoxDecoration(
                                    color: Color(0xff070a42),
                                    borderRadius: new BorderRadius.all(
                                        const Radius.circular(30.0)),
                                  ),
                                  child: new Text(
                                    "Login",
                                    style: new TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: 0.3,
                                    ),
                                  ),
                                ),
                                onTap: () async {},
                              )
                            ],
                          )),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(),
                    ),
                  ],
                )),
              ))),
    );
  }
}
