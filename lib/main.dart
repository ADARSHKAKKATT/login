import 'package:flutter/material.dart';

void main() {
  runApp(const Form());
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Icon(Icons.person_rounded, size: 90),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                      label: Text("Email"),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.mail)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                    label: Text("password"),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("SUBMIT"),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.indigo,
                ),

                /*TextButton(onPressed:(){}, child: Text("Submit"),
              )*/
              ),
            ],
          ),
        ),
      ),
    );
  }
}
