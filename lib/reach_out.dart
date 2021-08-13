import 'package:flutter/material.dart';

class ReachOut extends StatelessWidget {
  static const route = '/reachout';
  const ReachOut({Key? key}) : super(key: key);

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
          physics: ClampingScrollPhysics(),
          children: [
            Text(
              'Reach Out',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Are you a victim of online harassment?',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 5),
            Text(
              'Experiencing online harassment can be very distressing, and we want you to know that you are not alone. There are people that can help you get through this.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            infoCard(context, title: 'Tips on handling onlne harassment'),
            infoCard(context, title: 'Get legal help'),
            infoCard(context, title: 'Speak to a counsellor '),
            infoCard(
              context,
              title:
                  'Read stories from victims who have overcome online harassment ',
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
