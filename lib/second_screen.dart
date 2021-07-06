import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          /*color: Colors.blueAccent,
          width: 500,
          height: 55,*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  await launch("https://www.hotstar.com/in");
                },
                /*SizedBox(
                height: MediaQuery.of(context).size.height / 8,
                width: 150,*/
                child: Image.asset("assets/disney.png"),
              ),
              InkWell(
                onTap: () async {
                  await launch("https://ietenotes.wapka.site/");
                },
                child: Icon(Icons.help),
              ),
              Text(
                "Thankyou for submitting",
                style: TextStyle(fontSize: 25),
              ),
              InkWell(
                onTap: () {
                  /*Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyHomePage(title: "New Screen");
                  }));*/
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.logout,
                  size: 50,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
