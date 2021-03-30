import 'package:flutter/material.dart';
import 'package:myapp/provider/google.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('sign in'),
            backgroundColor: Colors.pink[300],
          ),
          body: Column(
            children: [
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text(
                    "welcome back!",
                    style: TextStyle(
                      color: Colors.pink[300],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton.icon(
                  label: Text("sign in with google"),
                  icon: Icon(Icons.android_rounded),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.pink[300]),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 12, vertical: 12)),
                  ),
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                    provider.login();
                  },
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Spacer()
            ],
          )),
    );
  }
}
