import 'package:flutter/material.dart';
import 'package:har/get_help_detail.dart';

class GetHelp extends StatelessWidget {
  static const route = '/get_help';
  const GetHelp({Key? key}) : super(key: key);

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
              'Get help',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'If you’re currently experiencing harassment on any online platform, you do not have to suffer in silence. Various platforms have ways of dealing with online harassment.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            getHelpCard(
              context,
              image: 'assets/images/Facebook.png',
              title: 'Facebook',
            ),
            getHelpCard(
              context,
              image: 'assets/images/twitter.png',
              title: 'Twitter',
            ),
            getHelpCard(
              context,
              image: 'assets/images/whatsapp.png',
              title: 'Whatsapp',
            ),
            getHelpCard(
              context,
              image: 'assets/images/instagram.png',
              title: 'Instagram',
            ),
            getHelpCard(
              context,
              image: 'assets/images/snapchat.png',
              title: 'Snapchat',
            ),
            getHelpCard(
              context,
              image: 'assets/images/linkedin.png',
              title: 'LinkedIn',
            ),
            getHelpCard(
              context,
              image: 'assets/images/youtube.png',
              title: 'Youtube',
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  GestureDetector getHelpCard(BuildContext context, {image, title}) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .pushNamed(GetHelpDetail.route, arguments: title),
      child: Card(
        color: Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.only(bottom: 10),
        child: SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Image.asset(
                  '$image',
                  width: 42,
                  height: 42,
                ),
                SizedBox(width: 15),
                Text('$title', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
