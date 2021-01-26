import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Container(
          color: Colors.white10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                height: MediaQuery.of(context).size.height / 2.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('images/udacoding.png'),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Selamat Datang Akhi Ukhti",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Text("hahahhahahah" + "heheheheh"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70.0),
                  ),
                  padding: EdgeInsets.all(0.0), //biar tombol buttonnya full
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[Color(0xFF13E3D2), Color(0xFF5D74E2)],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(80.0),
                      ),
                    ),
                    constraints: BoxConstraints(
                      //memberi container agar bisa diberi warna
                      minWidth:
                          150.0, //SEBENARNYA WIDTH TIDAK PERLU DISET KARENA OTOMATIS MENGIKUTI
                      minHeight:
                          36.0, //INI ADALAH UKURAN DEFAULT DARI RAISED BUTTON
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Get STarted",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Column(
                children: [
                  Image.asset(
                    'images/udacoding2.png',
                    fit: BoxFit.contain,
                    height: 80,
                    width: 80,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
