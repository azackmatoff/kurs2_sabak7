import 'package:flutter/material.dart';
import 'package:kurs2_sabak7/home_view.dart';
import 'package:kurs2_sabak7/test_page.dart';

//App Life Cycle

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0b0e21),
        accentColor: Colors.blueGrey,
        textTheme: TextTheme(
          // bodyText1: TextStyle(color: Colors.orange, fontSize: 12.0),
          // bodyText2: TextStyle(color: Colors.orange, fontSize: 16.0),
          headline4: TextStyle(color: Colors.white, fontSize: 102.0),
        ),
        scaffoldBackgroundColor: Color(0xff0b0e21),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orange),
          ),
        ),
      ),
      home: HomeView(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButtonTheme(
              data: TextButtonThemeData(
                style: TextButton.styleFrom(
                  elevation: 12.0,
                  primary: Colors.white,
                  backgroundColor: Colors.amber,
                  textStyle:
                      TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  //Versiya 1, uzun jolu
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) { return TestPage(); } ));

                  //Versiya 2, kiska jolu
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TestPage()));
                },
                child: Text(
                  'Go to testpage',
                  // style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            TextButton(
              // style: Theme.of(context).textButtonTheme.style,
              onPressed: () {
                //Versiya 1, uzun jolu
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) { return TestPage(); } ));

                //Versiya 2, kiska jolu
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TestPage()));
              },
              child: Text(
                'Go to testpage 2',
                // style: TextStyle(color: Colors.white),
              ),
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
