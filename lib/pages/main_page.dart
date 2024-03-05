// ignore_for_file: unnecessary_brace_in_string_interps
import 'package:flutter/material.dart';
import 'package:routes_app/model/model.dart';
import 'package:routes_app/routes/app_name_routes.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    var user = ModalRoute.of(context)?.settings.arguments ?? "Main Page";
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("${user}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (controller.text.isNotEmpty) {
            TextModel model = TextModel(text1: controller.text);
            Navigator.pushNamed(context, AppNameRoutes.homePage, arguments: model.text1);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Please all fields fill"),
              ),
            );
          }
        },
        child: const Icon(
          Icons.next_plan,
          size: 20,
        ),
      ),
    );
  }
}
