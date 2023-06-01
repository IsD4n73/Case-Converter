import 'package:bot_toast/bot_toast.dart';
import 'package:case_converter/controller/string_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recase/recase.dart';

class ButtonWidgets extends StatefulWidget {
  final TextEditingController stringController;

  const ButtonWidgets({
    Key? key,
    required this.stringController,
  }) : super(key: key);

  @override
  State<ButtonWidgets> createState() => _ButtonWidgetsState();
}

class _ButtonWidgetsState extends State<ButtonWidgets> {
  @override
  Widget build(BuildContext context) {
    String string = widget.stringController.text;

    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              widget.stringController.text =
                  widget.stringController.text.snakeCase;
            });
          },
          child: const Text("snake_case"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              widget.stringController.text =
                  widget.stringController.text.camelCase;
            });
          },
          child: const Text("camelCase"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              widget.stringController.text =
                  widget.stringController.text.titleCase;
            });
          },
          child: const Text("Title Case"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              widget.stringController.text =
                  widget.stringController.text.dotCase;
            });
          },
          child: const Text("dot.case"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              widget.stringController.text =
                  widget.stringController.text.pathCase;
            });
          },
          child: const Text("path/case"),
        ),
        ElevatedButton(

          onPressed: () {

            setState(() {

              widget.stringController.text =

                  widget.stringController.text.constantCase;

            });

          },

          child: const Text("CONSTANT_CASE"),

        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              widget.stringController.text =
                  widget.stringController.text.paramCase;
            });
          },
          child: const Text("param-case"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              widget.stringController.text =
                  widget.stringController.text.toUpperCase();
            });
          },
          child: const Text("UPPERCASE"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              widget.stringController.text =
                  widget.stringController.text.toLowerCase();
            });
          },
          child: const Text("lowercase"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              widget.stringController.text =
                  alternateChar(widget.stringController.text);
            });
          },
          child: const Text("aLtErNaTe CaSe"),
        ),
        ElevatedButton.icon(
          onPressed: () async {
            await Clipboard.setData(
              ClipboardData(
                text: string,
              ),
            );
            BotToast.showText(text: "Testo Copiato");
          },
          icon: const Icon(Icons.copy),
          label: const Text("Copia Testo"),
        ),
        ElevatedButton.icon(
          onPressed: () {
            setState(() {
              widget.stringController.clear();
            });
          },
          icon: const Icon(Icons.delete),
          label: const Text("Cancella"),
        )
      ],
    );
  }
}
