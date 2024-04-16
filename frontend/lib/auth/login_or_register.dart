import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({Key? key}) : super(key: key);

  @override
  _LoginOrRegisterState createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool isLogin = true;

  void toggleLogin() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isLogin ? 'Login' : 'Register'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: toggleLogin,
              child: Text(isLogin ? 'Register' : 'Login'),
            ),
            if (isLogin)
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            if (!isLogin)
              TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                ),
              ),
            ElevatedButton(
              onPressed: () {},
              child: Text(isLogin ? 'Login' : 'Register'),
            ),
          ],
        ),
      ),
    );
  }
}