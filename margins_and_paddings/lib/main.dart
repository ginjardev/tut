import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Margins & Padding Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<int> myvalues = <int>[2, 3];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // appBar: AppBar(
            //   title: Text(widget.title),
            // ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  alignment: const Alignment(-0.8, 1.0),
                  child: RichText(
                  text: const TextSpan(
                    text: "Hello Again!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                    ),
                    children: [
                      TextSpan(
                        text: "\nYou've been missed!",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.normal
                        )
                      ),
                    ]
                  ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      hintText: "Email",
                      contentPadding: EdgeInsets.only(left: 30),
                      fillColor: Color.fromARGB(84, 100, 117, 135),
                      filled: true,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      hintText: "Password",
                      contentPadding: EdgeInsets.only(left: 30),
                      fillColor: Color.fromARGB(84, 100, 117, 135),
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: const Text("Forgot password?"),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 90, bottom: 10),
                  width: MediaQuery.of(context).size.width * 0.92,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color.fromARGB(255, 77, 73, 73),
                  ),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                      ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      color: Color.fromARGB(84, 100, 117, 135)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 25.0, right: 45),
                        child: Icon(
                          FontAwesomeIcons.google,
                          size: 22.0,
                        ),
                      ),
                      Expanded(child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "Sign in with Google",
                          style: TextStyle(
                            fontSize: 18
                          ),
                          ),
                      ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text("Don't have an account?"),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Sign up here",
                        style: TextStyle(
                          color: Colors.blue
                        ),
                        )
                    ],
                  ),
                )
              ],
            )));
  }
}
