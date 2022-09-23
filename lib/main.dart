import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter login UI',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter login UI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextStyle style = const TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);


  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 20.0, 15.0, 20.0),
        hintText: 'Email',
        border:
        OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

    final paasswordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Password',
        border:
        OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: const Color(0xff01A0c),
      child: MaterialButton(
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text('Login',
          textAlign: TextAlign.center,
          style: style.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),


    );
    return Scaffold(

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset("assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 45.0),
                emailField,
                const SizedBox(height: 25.0),
                paasswordField,
                const SizedBox(
                  height: 35.0,
                ),
                loginButton,
                const SizedBox(
                  height: 15.0,
                )
              ],
            ),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
