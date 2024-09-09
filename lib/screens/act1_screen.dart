import 'package:flutter/material.dart';
import '../utils/button_style.dart';
import '../widgets/custom_text_field.dart';

class Act1Screen extends StatefulWidget {  
  @override
  _Act1ScreenState createState() => _Act1ScreenState();
}

class _Act1ScreenState extends State<Act1Screen> {
  String _text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Act1 Screen'),  
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              onChanged: (value) {
                setState(() {
                  _text = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: customButtonStyle,
              onPressed: () {
                print('Button pressed');
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Text('You entered: $_text'),
          ],
        ),
      ),
    );
  }
}
