import 'package:flutter/material.dart';
import 'package:har/get_help.dart';
import 'package:har/information.dart';
import 'package:har/reach_out.dart';

class HomeScreen extends StatelessWidget {
  static const route = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

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
          physics: ClampingScrollPhysics(),
          children: [
            Text(
              'We’re here to help you, Jane',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 15),
            homeCard(
              context,
              () => Navigator.of(context).pushNamed(InformationScreen.route),
              title: 'What to know',
              image: 'assets/images/chart.png',
            ),
            homeCard(
              context,
              () => Navigator.of(context).pushNamed(GetHelp.route),
              title: 'Get help',
              image: 'assets/images/build.png',
            ),
            homeCard(
              context,
              () => Navigator.of(context).pushNamed(ReachOut.route),
              title: 'Reach out',
              image: 'assets/images/hug.png',
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector homeCard(BuildContext context, onTap, {title, image}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.only(bottom: 15),
        child: SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '$title',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Expanded(child: Image.asset('$image', fit: BoxFit.cover)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
