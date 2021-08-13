import 'package:flutter/material.dart';
import 'package:har/info_detail.dart';

class InformationScreen extends StatelessWidget {
  static const route = '/information_screen';
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Text(
              'Information',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 15),
            infoCard(
              context,
              title: 'What is considered harassment?',
              onTap: () => Navigator.of(context).pushNamed(InfoDetail.route),
            ),
            infoCard(
              context,
              title: 'How do I protect myself from harassment online?',
              onTap: () => Navigator.of(context).pushNamed(InfoDetail.route),
            ),
            infoCard(
              context,
              title: 'What should I do if I’m being harassed?',
              onTap: () => Navigator.of(context).pushNamed(InfoDetail.route),
            ),
            infoCard(
              context,
              title:
                  'What should I do if someone I know is being harassed online?',
              onTap: () => Navigator.of(context).pushNamed(InfoDetail.route),
            ),
            infoCard(
              context,
              title: 'Laws and Policies',
              onTap: () => Navigator.of(context).pushNamed(InfoDetail.route),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector infoCard(BuildContext context, {onTap, title}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Theme.of(context).accentColor,
        margin: EdgeInsets.only(bottom: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '$title',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
