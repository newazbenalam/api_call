import 'package:api_call/modules/person.dart';
import 'package:api_call/services/person_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Consumer<PersonProvider>(
        builder: (context, controller, _) {
          return Center(
            child: ElevatedButton(
                onPressed: () {
                  controller.addPerson(Person(
                      email: "jahsdjkhasjkdh#gmail.com",
                      id: 0,
                      name: " Newaz",
                      phone: "22121565"));
                },
                child: const Text('Post')),
          );
        },
      ),
    );
  }
}
