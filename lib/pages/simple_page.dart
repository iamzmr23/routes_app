import 'package:flutter/material.dart';
import 'package:routes_app/model/model.dart';
import 'package:routes_app/routes/app_name_routes.dart';

class SimplePage extends StatelessWidget {
  const SimplePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    // ignore: unused_local_variable
    var user = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(user),
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
      floatingActionButton: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                TextModel model = TextModel(text4: controller.text);
                Navigator.pushNamed(context, AppNameRoutes.detailPage, arguments: model.text4);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Please all fields fill"),
                  ),
                );
              }
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
