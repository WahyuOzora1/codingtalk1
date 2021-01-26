import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: ContentArea(),
    );
  }
}

class ContentArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3.3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('images/udacoding.png'),
                      fit: BoxFit.contain,
                    )),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3.6,
                child: Container(
                  color: Colors.white30,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    margin: EdgeInsets.all(20.0),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Login Form",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.email,
                                  color: Colors.green,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                  ),
                                ),
                                labelText: "Email",
                              ),
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.security,
                                  color: Colors.green,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                  ),
                                ),
                                labelText: "Password",
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Checkbox(
                                  onChanged: (_) {},
                                  value: false,
                                ),
                                Text("Remember Me"),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 20, bottom: 5, right: 15),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text("Forgot Password?",
                                    style: TextStyle(
                                        color: Colors.blue[400],
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.white10,
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70.0),
                    ),
                    padding: EdgeInsets.all(0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xFF1221D3),
                          Color(0xFF6921D3)
                        ]),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      constraints: BoxConstraints(
                        minHeight: 36.0,
                        minWidth: 150.0,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "Or",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white24),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SocialButton(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class SocialButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TERDAPAT 4 TOMBOL SOCIAL LOGIN YANG BERDERET SECARA HORIZONTAL
    //MAKA KITA GUNAKAN ROW
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center, //SET POSISINYA DITENGAH
          children: <Widget>[
            //MASING-MASING TOMBOL MENGGUNAKAN FLATACTIONBUTTON
            //DENGAN CHILD IMAGE DIDALAMNYA
            //KEMUDIAN MARGIN KANANNYA DISET SEBESAR 10 UNTUK MEMBERI JARAK ANTAR TOMBOL
            Container(
              margin: EdgeInsets.only(right: 10),
              child: FloatingActionButton(
                //membuat button agar saat gambar di klik bisa muncul
                heroTag: null,
                onPressed: () {},
                child: Image.asset(
                  'images/facebook.png',
                ),
                backgroundColor: Color(0xFF5D74E2),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: FloatingActionButton(
                heroTag: null,
                onPressed: () {},
                child: Image.asset(
                  'images/twitter.png',
                ),
                backgroundColor: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: FloatingActionButton(
                heroTag: null,
                onPressed: () {},
                child: Image.asset(
                  'images/google.png',
                ),
                backgroundColor: Colors.white,
              ),
            ),

            Container(
              margin: EdgeInsets.only(right: 10),
              child: FloatingActionButton(
                heroTag: null,
                onPressed: () {},
                child: Image.asset(
                  'images/linkedin.png',
                ),
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          //DIIKUTI DENGAN TEKSNYA
          Text(
            "Don't have an Account? Sign in here",
            style: TextStyle(),
          ),
        ]),
      ],
    );
  }
}
