import 'package:flutter/material.dart';
import 'package:har/create_account.dart';

class OnboardingOne extends StatelessWidget {
  static const route = '/onboarding_one';
  const OnboardingOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hello there!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Just because it’s online doesn’t make it any less hurtful. You can get all the help you need.',
            ),
            Expanded(
              child: Image.asset('assets/images/home.png'),
            ),
            MaterialButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(CreateAccount.route),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Get started',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('emergency?'),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

// class MyCustomButton extends StatelessWidget {
//   const MyCustomButton({
//     Key? key,
//     Function? onTap,
//     required this.title,
//   }) : super(key: key);

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialButton(
//       onPressed: null,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8),
//       ),
//       color: Theme.of(context).primaryColor,
//       padding: EdgeInsets.symmetric(vertical: 15),
//       child: Text(
//         title,
//         style: TextStyle(
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }
