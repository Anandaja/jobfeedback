import 'package:flutter/material.dart';

class DisplayDataScreen extends StatelessWidget {
  final String? text;
  final bool ischecked;
  final String radioValue;
  final bool switchValue;
  const DisplayDataScreen({
    super.key,
    this.text,
    required this.ischecked,
    required this.radioValue,
    required this.switchValue,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data')),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text('Name$text'),
            const SizedBox(height: 25),
            Text('Degree Status : ${ischecked ? 'yes' : 'no'}'),
            const SizedBox(height: 25),
            Text('Rank:$radioValue'),
            const SizedBox(height: 25),
            Text('Ready to join : ${switchValue ? 'yes' : 'no'}'),
          ],
        ),
      ),
    );
  }
}
