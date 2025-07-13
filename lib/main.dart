// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setWindowTitle("aerobolt");
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'aerobolt';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _buildHome(title, context),
    );
  }

  Widget _buildHome(String title, context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Row(
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Expanded(
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: const Row(
                      children: [Text('This is where page navigation goes')],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.10),
                Expanded(
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: const Row(
                      children: [Text('This is where saved projects go')],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.10),
          Container(
            width: MediaQuery.of(context).size.width * 0.61,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration:
                          BoxDecoration(border: Border.all(color: Colors.black)),
                    child: const Row(
                      children: [
                        Text('This is where the current page is displayed'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
        ],
      ),
    );
  }
}
