import 'package:flutter/material.dart';



import 'MrActivity.dart';

List<String> imagePaths = [
  "assets/images/image003.png",
  "assets/images/jusco_line.png",
];
String copyright="© 2018&#8211;19 Vaibhu Infratech India Pvt Ltd";
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'TSUIS LIMITED '),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  String _macAddress="unKnown";
  String _imeinumber="unKnown";


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState()
  {
    super.initState();
    initPlatformState();

  }
  Future <void> initPlatformState() async {
    String macAddress;
    String imeinumber;
  /*  try{
      macAddress= await GetMac.macAddress();
    }*/
  }
  int _counter = 0;
  TextEditingController Username = TextEditingController();
  TextEditingController password = TextEditingController();

  String printText (String text) {
    print(text);
    return 'Hello $text';
  }
  String Validate_login(String Username,String pwd) {

    if ((Username == "admin") && (pwd == "1611")) {
    }
    else if((Username == "user") && (pwd == "1234")) {
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => MrActivity()),);
    }
  }
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
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5,  0.9],
            colors: [
              Colors.lightBlue[800],
              Colors.white,
              Colors.lightGreen[400],
            ],
          ),
        ),
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    child: Scaffold(
        backgroundColor: Colors.transparent,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: IconButton(icon: Image.asset('assets/images/image003.png'),),
        ),

      body:

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
      new SingleChildScrollView(

      child: new Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).

          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            SizedBox(
              width: 2000.0,
              height: 20.0,
            ),
            new Image.asset(
              'assets/images/image003.png',
              fit:BoxFit.fill,
            ),
            SizedBox(
              width: 2000.0,
              height: 20.0,
            ),
            new Image.asset(
              'assets/images/jusco_line.png',
              fit:BoxFit.fill
            ),
            SizedBox(
              width: 2000.0,
              height: 20.0,
            ),
            new Container(
                      child: Text('Photo Meter Billing',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
                    ),
            SizedBox(
              width: 2000.0,
              height: 20.0,
            ),
     new Container(
       child: new TextField(
       obscureText: false,
         controller: Username,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Username',
            hintText: 'Enter Username'),
    ),
     ),
            SizedBox(
              width: 2000.0,
              height: 20.0,
            ),
            new Container(
              child: new TextField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Password'),
              ),
            ),
            SizedBox(
              width: 2000.0,
              height: 20.0,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {

                /* Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MrActivity()),);*/
                  Validate_login(Username.text, password.text);
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              width: 2000.0,
              height: 20.0,
            ),
            new Image.asset(
                'assets/images/company_logo.png',
                fit:BoxFit.fill
            ),
            SizedBox(
              width: 2000.0,
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: new Container(
                child: Text("© 2018-19 Vaibhu Infratech India Pvt Ltd",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12),)
            ),
                ),
              Expanded(
                flex: 1,
               child: new Container(
                     child: Text("Ver 1234" ,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12),)
                 // child: Text(printText('World')),
                ),)
              ])
            /* Container(),
            Container()*/

  ]    )
      )    )
    );
  }
}
