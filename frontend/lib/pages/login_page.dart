import 'package:flutter/material.dart';
import 'package:frontend/components/my_button.dart';
import 'package:frontend/themes/theme_provider.dart';
import 'package:frontend/pages/register.dart';
import 'package:frontend/components/my_button.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({Key? key, this.onTap}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login function
void login() {
  // Here, you would typically make an API call to authenticate the user
  // For demonstration purposes, let's assume authentication is successful

  // Check if email and password are not empty
  if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
    // Simulate authentication success
    // You would replace this with actual authentication logic
    bool isAuthenticated = true; // Change this based on your authentication logic

    if (isAuthenticated) {
      // Navigate to home page if authentication is successful
      Navigator.pushReplacementNamed(context, '/home'); // Replace '/home' with the actual route to your home page
    } else {
      // Show an error message or handle authentication failure
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Invalid email or password. Please try again.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  } else {
    // Show an error message PAif email or password is empty
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Error'),
        content: Text('Please enter both email and password.'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chiya Chautari'), // Set a default title or remove the title from here
      ),

      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logoddd
              //logo
ClipRRect(
  borderRadius: BorderRadius.circular(50), // Adjust the value as needed
  child: Image.asset(
    'assets/logo.jpeg', // Replace 'icon.png' with your actual image name
    width: 100,
    height: 100,
    // color: Theme.of(context).colorScheme.primary, // Add color if needed
  ),
),


              const SizedBox(height: 20),
              //login form
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Welcome to Chiya Chautari! Please login to continue.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    textAlign: TextAlign.center,
                   
                  ),
                ),
              ),
              //email field
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
              ),
              //password field
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
              ),

              //sign in button
              const SizedBox(height: 20),
              MyButton(
                text: "Sign In",
                onTap: login,
              ),

              //sign up button
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),

                  const SizedBox(width: 4),
                  TextButton(
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute( builder: (context) =>const RegisterPage()));
                    }
                    ,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
