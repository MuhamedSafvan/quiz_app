import 'package:flutter/material.dart';
import 'package:myapp/pages/resultPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
List questions = [
    {
      "question": "Which is the national animal?",
      "option_a": "Tiger",
      "option_b": "Zebra",
      "option_c": "Lion",
      "answer": "Tiger"
    },
    {
      "question": "What is the middle color of National flag?",
      "option_a": "White",
      "option_b": "Meroon",
      "option_c": "Green",
      "answer": "White"
    },
    {
      "question": "Who is the father nation?",
      "option_a": "Dr. Ambedkar",
      "option_b": "Mahatma Gandhi",
      "option_c": "Raja Ram Mohan Roy",
      "answer": "Mahatma Gandhi"
    },
    {
      "question": " Who is the Patron Saint of Spain?",
      "option_a": "St James",
      "option_b": "St John",
      "option_c": "St Benedict",
      "answer": "St James"
    },
    {
      "question":
          "Which of these means a speech in a play where a character talks to themselves rather than to other characters?",
      "option_a": "Interlude",
      "option_b": "Revue",
      "option_c": "Soliloquy",
      "answer": "Soliloquy"
    },
    {
      "question":
          "In the Vicar of Dibley, what was the name of the vicar's clueless friend?",
      "option_a": "Alice",
      "option_b": "Beatrice",
      "option_c": "Charlotte",
      "answer": "Alice"
    },
  ];
  var rightCount = 0;
  var wrongCount = 0;
  var index = 0;
  int numb = 0;

  reset() {
    setState(() {
      rightCount = 0;
      wrongCount = 0;
      index = 0;
      numb = 0;
    });
  }

  checkAnswer(userInput) {
    if (index < questions.length - 1) {
      if (userInput == questions[index]["answer"]) {
        setState(() {
          rightCount += 1;
          index += 1;
        });
      } else {
        setState(() {
          wrongCount += 1;
          index += 1;
        });
      }
    } else if (index == questions.length - 1) {
      // index = 0;
      if (userInput == questions[index]["answer"]) {
        setState(() {
          rightCount += 1;
        });
      } else {
        setState(() {
          wrongCount += 1;
        });
      }
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ResultPage()),
      );
      var rightAnswer = rightCount;
      var total = questions.length;

      reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(9),
                margin: EdgeInsets.all(9),
                child: Text(
                  "${questions[index]['question']}",
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                  onPressed: () {
                    numb++;
                    numb > questions.length
                        ? SizedBox()
                        : checkAnswer(questions[index]['option_a']);
                  },
                  child: Text(
                    "${questions[index]['option_a']}",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                  onPressed: () {
                    numb++;
                    numb > questions.length
                        ? SizedBox()
                        : checkAnswer(questions[index]['option_b']);
                  },
                  child: Text(
                    "${questions[index]['option_b']}",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                  onPressed: () {
                    numb++;
                    numb > questions.length
                        ? SizedBox()
                        : checkAnswer(questions[index]['option_c']);
                  },
                  child: Text(
                    "${questions[index]['option_c']}",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Total: ${questions.length} - Right: $rightCount - Wrong: $wrongCount",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      );
  }
}