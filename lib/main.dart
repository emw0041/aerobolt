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
      home: _buildHome(title),
    );
  }

  Widget _buildHome(String title) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(),
    );
  }
}
