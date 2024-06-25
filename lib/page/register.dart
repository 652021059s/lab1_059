//652021059 papangkornsaeoueng 
import 'package:lab1_059/page/major.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String username = '';
  String password = '';
  double weight = 60;
  double height = 170;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
          centerTitle: true,
          backgroundColor: Color(0xFFB6E2D3),
        ),
        backgroundColor: Color(0xFFFAE8E0),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                CircleAvatar(
                  radius: 100,
                  child: ClipOval(
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/9187/9187604.png',
                      fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'กรุณากรอกชื่อ',
                      ),
                      onSaved: (value) {
                        name = value ?? '';
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'กรุณากรอกชื่อ',
                      ),
                      onSaved: (value) {
                        username = value ?? '';
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'กรุณากรอกรหัสผ่าน',
                      ),
                      onSaved: (value) {
                        password = value ?? '';
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text('Weight: ${weight.toStringAsFixed(1)} kg'),
                Slider(
                  value: weight,
                  min: 30,
                  max: 150,
                  divisions: 120,
                  label: weight.toStringAsFixed(1),
                  onChanged: (value) {
                    setState(() {
                      weight = value;
                    });
                  },
                ),
                Text('Height: ${height.toStringAsFixed(1)} cm'),
                Slider(
                  value: height,
                  min: 100,
                  max: 250,
                  divisions: 150,
                  label: height.toStringAsFixed(1),
                  onChanged: (value) {
                    setState(() {
                      height = value;
                    });
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Major()),
                      );
                    }
                  },
                  child: Text('NEXT'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
