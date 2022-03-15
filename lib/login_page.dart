import 'package:flutter/material.dart';
import 'package:pertemuan4/home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String username = "";
  String password = "";
  bool isLoginSuccess = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Login Page"),
          ),
          body: Column(
            children: [
              _usernameField(),
              _passwordField(),
              _loginButton(context),
            ],
          ),
        ));
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
            hintText: 'Username',
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                  color: (isLoginSuccess) ? Colors.blue : Colors.red
              ),
            )),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        //enabled: false,
        onChanged: (value) {
          password = value;
        },
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green)
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                  color: (isLoginSuccess) ? Colors.blue : Colors.red
              ),
            )),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: (isLoginSuccess) ? Colors.blue : Colors.red
        ),
        onPressed: () {
          String pesan = "";
          if (password == "flutter123") {
            setState(() {
              pesan = "Login Success";
              isLoginSuccess = true;
            });
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
                  return HomePage(username: username);
                }));
          } else {
            setState(() {
              pesan = "Login Failed";
              isLoginSuccess = false;
            });
          }

        },
        child: Text("Login"),
      ),
    );
  }
}



