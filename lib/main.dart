import 'package:flutter/material.dart';
import './second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      initialRoute: '/first',
      routes: {
        '/first': (context) => MyHomePage(title: 'Home Page'),
        '/second': (contest) => SecondScreen()
      },
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Home Page", style: TextStyle(fontSize: 25.0)),
        //leading: Icon(Icons.home),
        actions: [
          Icon(Icons.login),
          Icon(Icons.logout),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
                color: Colors.green,
                height: 50,
                padding: EdgeInsets.only(left: 100),
                width: 350,
                child: Text("Welcome UserSKY")),
            ListTile(
              title: Text("Login"),
              trailing: Icon(Icons.login),
            ),
            Divider(thickness: 1, color: Colors.blue),
            ListTile(
              title: Text("Logout"),
              trailing: Icon(Icons.logout),
            ),
            Divider(thickness: 1, color: Colors.blue),
            ListTile(
                title: Text("Help & Support"),
                trailing: Icon(Icons.help_center),
                onTap: () {
                  print("Clicked help icon");
                }),
            Divider(thickness: 1, color: Colors.blue),
            ListTile(
              title: Text("Contact Us"),
              trailing: Icon(Icons.contact_phone),
            ),
            Divider(thickness: 1, color: Colors.blue),
          ],
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Icon(Icons.home, size: 100, color: Colors.green),
                Icon(
                  Icons.local_atm_outlined,
                  size: 100.0,
                  color: Colors.red,
                ),
                Icon(Icons.local_gas_station, size: 100, color: Colors.blue),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: ElevatedButton(
                  // style: ButtonStyle:(background:Colors:)

                  onPressed: () {
                    print("User clicked on submit button");
                  },
                  child: Text("Submit",
                      style: TextStyle(color: Colors.orangeAccent))),
            ),
            Container(
                padding: EdgeInsets.only(top: 10),
                height: 100,
                width: 100,
                color: Colors.green,
                child: Center(
                  child: Column(
                    children: [
                      Icon(Icons.access_alarm),
                      Expanded(
                        child: Text("Swarnim Yadav",
                            style: TextStyle(color: Colors.black38)),
                      ),
                    ],
                  ),
                )),
            Container(
                child: Row(children: [
              Expanded(
                  child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/YouTube_social_white_square_%282017%29.svg/1200px-YouTube_social_white_square_%282017%29.svg.png")),
              Expanded(
                child: Image.network(
                    "https://cdn.pixabay.com/photo/2017/08/22/11/56/linked-in-2668696_960_720.png"),
                flex: 3,
                // size: 100
              ),
              Expanded(
                  child: Image.network(
                      "https://lh3.googleusercontent.com/wS72vstdNigZfIWHoQUkP8Ir6-NqLg8jEYCYmhW6L1NuMvjQmtr72QSl6r-QXoL8AXkSti6BIPf1SWGYypymLuodxzF6gFRirz1Ndg")),
            ])),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');

                  /* Navigator.push(context, MaterialPageRoute(builder: (contest) {
                    return SecondScreen();
                  }));*/
                },
                child: Text("Click here  for next screen")),
            Text("Welcome to  new session", style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 200,
              width: 200,
              child: Image.network(
                  "https://hips.hearstapps.com/countryliving.cdnds.net/17/47/1511194376-cavachon-puppy-christmas.jpg"),
            ),
            Text(
              "Welcome to App dev session ! .",
              style: TextStyle(color: Colors.blueAccent, fontSize: 25.0),
            ),
            Text(
              'You have pushed the button this many time.Really you did?',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
