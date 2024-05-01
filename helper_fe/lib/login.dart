import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transport Berkah Armada',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 71, 169, 146),
      body: Center(
        child: Text(
          'TBA',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 48.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> login() async {
    var email = _emailController.text;
    var password = _passwordController.text;

    var url = Uri.parse('http://192.168.0.111/folder_login/login.php');
    var response = await http.post(url, body: {'email': email, 'password': password});

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      if (jsonResponse == "Success") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BottomNavigationBarWidget()),
        );
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Login Gagal'),
            content: Text('Email atau password salah.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Terjadi kesalahan saat login. Silakan coba lagi.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Transport Berkah Armada',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 71, 169, 146),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Masuk Ke Akun',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                hoverColor: Color.fromARGB(255, 71, 169, 146),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hoverColor: Color.fromARGB(255, 71, 169, 146),
              ),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: login,
              child: Text('Masuk'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 71, 169, 146),
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

