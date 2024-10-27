import 'package:flutter/material.dart';
import 'text_display.dart';
import 'custom_text_field.dart';
import 'custom_text_button.dart';

class CurrencyConverterPage extends StatelessWidget {
  const CurrencyConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.purple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          TextDisplay(),
          CustomTextField(),
          CustomTextButton(),
        ],
      ),
    );
  }
}import 'package:flutter/material.dart';

class TextDisplay extends StatelessWidget {
  const TextDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '\$0',
      style: TextStyle(
        fontSize: 23,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Hey Alina",
          hintStyle: TextStyle(color: Color.fromARGB(255, 211, 178, 198)),
          prefixIcon: Icon(
            Icons.monetization_on,
          ),
          filled: true,
          fillColor: Color.fromARGB(122, 132, 142, 146),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 175, 171, 175),
                width: 2.0,
                style: BorderStyle.solid),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 149, 147, 150),
                width: 2.0,
                style: BorderStyle.solid),
          ),
        ),
        keyboardType: TextInputType.numberWithOptions(decimal: true, signed: false),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        debugPrint('pressed');
      },
      style: const ButtonStyle(
        backgroundColor:  WidgetStatePropertyAll<Color>(Color.fromARGB(122, 132, 142, 142)),
        foregroundColor: WidgetStatePropertyAll<Color>(Color.fromARGB(122, 132, 142, 142)),
        fixedSize: WidgetStatePropertyAll<Size>(Size(100, 50)),
      ),
      child: const Text(
        'convert',
      ),
    );
  }
}