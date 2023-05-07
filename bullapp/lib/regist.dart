import 'package:flutter/material.dart';

class Regist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Registration Page',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _firstNameController,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _lastNameController,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // TODO: Handle registration logic here
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      )
    );
  }
}
