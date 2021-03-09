import 'package:bank_card_flutter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 0.8),
              colors: [
                Colors.orange,
                Colors.blueAccent,
                Colors.white,
                Colors.cyan,
                Colors.red,
                Colors.deepPurpleAccent,
                Colors.orange,
                Colors.cyan,
                Colors.deepPurpleAccent,
                Colors.blueAccent,
                Colors.deepPurpleAccent,
                Colors.deepPurpleAccent,
                Colors.deepPurpleAccent,
                Colors.blueAccent,
                Colors.cyan,
                Colors.red,
              ]),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 150.0,
            ),
            Container(
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/03/21/02/00/user-2160923_1280.png"),
                  ),
                  shape: BoxShape.circle),
            ),
            SizedBox(
              height: 15.0,
            ),
            _login("email", false),
            SizedBox(
              height: 10.0,
            ),
            _login("password", true),
            SizedBox(
              height: 10.0,
            ),
            _login("retype the password", true),
            SizedBox(
              height: 15.0,
            ),
            InkWell(
                child: Container(
              height: 40.0,
              width: 90.0,
              child: Center(
                  child: Text(
                "Register",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),
              )),
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(30.0)),
            )),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (LoginPage())),
                );
              },
              child: Text("Login"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (HomePage())),
                );
              },
              child: Text("continue without being a member"),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _login(String title, bool obs) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
    child: TextField(
      obscureText: obs,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: title,
      ),
    ),
  );
}
