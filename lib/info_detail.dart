import 'package:flutter/material.dart';

class InfoDetail extends StatelessWidget {
  static const route = '/infodetail_screen';
  const InfoDetail({Key? key}) : super(key: key);

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
              'What is considered harassment?',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(height: 15),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Online harassment occurs when someone acts in a way designed to annoy, provoke, threaten or otherwise cause another person emotional distress. It can happen in many different forms including but not limited to:',
                    style: TextStyle(
                      color: Colors.black,
                      height: 1.5,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '1. Statements that degrade someone’s character (including shaming).',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            Text(
              '2. Post, stories or videos with inappropriate or intimate images.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            Text(
              '3. Threats to or about someone.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            SizedBox(height: 10),
            Text(
              'Actions that unintentionally cause distress are not considered harassment.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
