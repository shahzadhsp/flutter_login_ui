import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(12.0)),
            Align(
              alignment: Alignment.center,
              child: Text(
                'WELCOME BACK',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/welcomeback.jpg'),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Name',
                    hintText: 'Enter Full Name'),
                obscureText: false,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.lock), hintText: 'Enter Strong Password'),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Forgot Password',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Log in',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Column(
              children: [Text('Login via otp')],
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.g_mobiledata),
                Icon(Icons.facebook),
              ],
            ),
            SizedBox(
              height: 18.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                SizedBox(
                  height: 18.0,
                  width: 4.0,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                )
              ],
            )
          ],
        ));
  }
}
