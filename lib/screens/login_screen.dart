import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/home_screen.dart';
import 'package:instagram_clone/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static final String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;

  _onSubmitLogin() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      if(_email == 'nguyendai.dev@gmail.com' && _password == '123123') {
        Navigator.pushNamed(context, HomeScreen.id);
      }
      print(_email);
      print(_password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            width: 200.0,
            child: Image(image: AssetImage('images/instagram_logo.png'))),
        SizedBox(height: 30.0),
        Text(
          'Instagram',
          style: TextStyle(fontSize: 45.0),
        ),
        SizedBox(
          height: 20,
        ),
        Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                    validator: (input) => !input.contains('@')
                        ? 'Please enter a valid email'
                        : null,
                    onSaved: (input) => _email = input,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                    validator: (input) => input.trim().length < 6
                        ? 'Please enter a password min 6 characters'
                        : null,
                    onSaved: (input) => _password = input,
                    obscureText: true,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300.0,
                  child: TextButton(
                      onPressed: () => _onSubmitLogin(),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[700],
                          textStyle: TextStyle(color: Colors.white),
                          padding: EdgeInsets.all(12.0)),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300.0,
                  child: TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, SignUpScreen.id),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[700],
                          textStyle: TextStyle(color: Colors.white),
                          padding: EdgeInsets.all(12.0)),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      )),
                ),
              ],
            ))
      ],
    )));
  }
}
