import 'package:flutter/material.dart';

class Login extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        ),
      home: MyLogin(title: 'Login'),
    );
  }
}

class MyLogin extends StatelessWidget {
  MyLogin({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 100, 0, 50),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/Images/Logo.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10,10,10,10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Username"
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password"
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(80,10,10,0),
                  child: TextButton(
                    child: Text("Lupa Sandi?"),
                    onPressed: () => key,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50,10,10,0),
                  child: OutlinedButton(
                    child: Text("Login"),
                    onPressed: () => key,
                  )
                )
              ],
            )
          ],
        ),
      )
    );
  }
}