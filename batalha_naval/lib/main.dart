import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int rows = 10;
  int columns = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Defina a cor de fundo para branco
      appBar: AppBar(
        title: const Text('batalha naval'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Jogador 1',
                  style: TextStyle(color: Colors.red, fontSize: 30),
                ),
                const SizedBox(
                  height: 100,
                ),
                _buildButtonMatrix(),
              ],
            ),
            const Text(
              'X',
              style: TextStyle(fontSize: 200, color: Colors.red),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Jogador 2',
                  style: TextStyle(color: Colors.red, fontSize: 30),
                ),
                const SizedBox(
                  height: 100,
                ),
                _buildButtonMatrix(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonMatrix() {
    List<Widget> buttons = [];

    for (int row = 0; row < rows; row++) {
      List<Widget> rowButtons = [];
      for (int col = 0; col < columns; col++) {
        rowButtons.add(_buildButton());
      }
      buttons.add(Row(children: rowButtons));
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buttons,
    );
  }

  Widget _buildButton() {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(backgroundColor: Colors.blue),
        child: const Text(
          'B',
          style: TextStyle(fontSize: 10, color: Colors.white),
        ));
  }
}
