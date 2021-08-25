import 'package:flutter/material.dart';
// import 'package:myapp/widgets/home.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.greenAccent,
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Score",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "$rightAnswer",
                    style: TextStyle(fontSize: 30),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
