import 'package:flutter/material.dart';
import 'package:har/home.dart';

class SignIn extends StatelessWidget {
  static const route = '/sign_in';
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Text(
              'Sign in',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            SizedBox(height: 5),
            Text('Please sign-in to continue'),
            SizedBox(height: 15),
            customTextfield('Email address'),
            customTextfield('Password', icons: Icon(Icons.remove_red_eye)),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text('Forgot your password?'),
              ),
            ),
            SizedBox(height: 50),
            MaterialButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(HomeScreen.route),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding customTextfield(helperText, {Icon? icons}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          helperText: '$helperText',
          suffixIcon: icons,
        ),
      ),
    );
  }
}
