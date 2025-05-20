import 'package:flutter/material.dart';
import 'package:job_feedback/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _checkBoxValue = false;
  String _radioValue = 'Option 1';
  bool _switchValue = false;
  final TextEditingController _textEditingController = TextEditingController();
  void _submitData() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => DisplayDataScreen(
              text: _textEditingController.text,
              ischecked: _checkBoxValue,
              radioValue: _radioValue,
              switchValue: _switchValue,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Feedback'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  labelText: 'Enter your name ',
                ),
              ),
            ),
            const SizedBox(height: 25),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Checkbox(
                    value: _checkBoxValue,
                    onChanged: (value) {
                      setState(() {
                        _checkBoxValue = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const Text('i have complete a degree'),
            const SizedBox(height: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Radio(
                    value: 'First',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value.toString();
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('First Class'),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Radio(
                    value: 'Second',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value.toString();
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Second Class'),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Switch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Ready to Join ?'),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: _submitData,
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
