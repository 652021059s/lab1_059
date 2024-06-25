//652021059 papangkornsaeoueng 
import 'package:flutter/material.dart';

class Major extends StatefulWidget {
  const Major({Key? key}) : super(key: key);

  @override
  State<Major> createState() => _MajorState();
}

class _MajorState extends State<Major> {
  String? _selectedMajor;
  String? _selectedLanguage;
  bool _agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Form'),
        backgroundColor: Color(0xFF8FDDE7), // Set app bar color
      ),
      body: Container(
        color: Color(0xFFFAE8E0), // Set background color
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Major'),
            DropdownButtonFormField<String>(
              value: _selectedMajor,
              hint: Text('Select Major'),
              items: [
                DropdownMenuItem(value: 'Computer Science', child: Text('Computer Science')),
                DropdownMenuItem(value: 'Information Technology', child: Text('Information Technology')),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedMajor = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text('Language'),
            Column(
              children: <Widget>[
                RadioListTile(
                  title: Text('Thai'),
                  value: 'Thai',
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value as String?;
                    });
                  },
                ),
                RadioListTile(
                  title: Text('English'),
                  value: 'English',
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value as String?;
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Chinese'),
                  value: 'Chinese',
                  groupValue: _selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value as String?;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _agreedToTerms,
                  onChanged: (value) {
                    setState(() {
                      _agreedToTerms = value!;
                    });
                  },
                ),
                Text('Agree Condition Terms'),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _agreedToTerms ? () {} : null,
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.black87, // Set text color to dark black
                    fontSize: 16.0, // Optional: Set font size
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Major(),
  ));
}
