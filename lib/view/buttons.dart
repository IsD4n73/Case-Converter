import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      alignment: WrapAlignment.spaceBetween,
      spacing: 10,
      runSpacing: 10,
      children: [
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
        ElevatedButton.icon(
          onPressed: () async {
            await Clipboard.setData(
              ClipboardData(
                text: string,
              ),
            );
          },
          icon: const Icon(Icons.copy),
          label: const Text("Copia Testo"),
        )
      ],
    );
  }
}
