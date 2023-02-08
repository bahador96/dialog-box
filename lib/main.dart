import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome Dialogs"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              AnimatedButton(
                text: "Warning Dialog",
                color: Colors.orange,
                pressEvent: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.warning,
                    animType: AnimType.bottomSlide,
                    showCloseIcon: true,
                    title: "Warning",
                    desc: "This is the description of the awesome dialog box",
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  ).show();
                },
              ),
              const SizedBox(
                height: 16,
              ),
              AnimatedButton(
                text: "Warning Dialog",
                color: Colors.red,
                pressEvent: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.error,
                    animType: AnimType.bottomSlide,
                    showCloseIcon: true,
                    title: "Error",
                    desc: "This is the description of the awesome dialog box",
                    btnOkIcon: Icons.cancel,
                    btnOkOnPress: () {},
                    btnOkColor: Colors.red,
                  ).show();
                },
              ),
              const SizedBox(
                height: 16,
              ),
              AnimatedButton(
                text: "Question Dialog",
                color: Colors.green,
                pressEvent: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.question,
                    animType: AnimType.bottomSlide,
                    showCloseIcon: true,
                    title: "Question",
                    desc: "This is the description of the awesome dialog box",
                    btnOkOnPress: () {},
                  ).show();
                },
              ),
              const SizedBox(
                height: 16,
              ),
              AnimatedButton(
                text: "Success Dialog",
                color: Colors.amber,
                pressEvent: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.success,
                    animType: AnimType.bottomSlide,
                    showCloseIcon: true,
                    title: "Success",
                    desc: "This is the description of the awesome dialog box",
                    btnOkOnPress: () {},
                    btnCancelOnPress: () {},
                  ).show();
                },
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
