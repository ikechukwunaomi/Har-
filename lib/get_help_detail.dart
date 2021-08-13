import 'package:flutter/material.dart';

class GetHelpDetail extends StatelessWidget {
  static const route = '/gethelpdetails';
  const GetHelpDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = ModalRoute.of(context)!.settings.arguments;
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
              'Steps to take if you’re being harassed on $title',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
