import 'package:case_converter/view/buttons.dart';
import 'package:flutter/material.dart';

import '../controller/string_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController stringController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Case Converter"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Inserisci la stringa che vuoi convertire:"),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  controller: stringController,
                  maxLines: 10,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.blueGrey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "Lunghezza: ${stringController.text.length} | "
                "Parole: ${getWordCount(stringController.text)} | "
                "Linee: ${getLinesCount(stringController.text)}",
              ),
              const SizedBox(height: 20),
              ButtonWidgets(
                stringController: stringController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
