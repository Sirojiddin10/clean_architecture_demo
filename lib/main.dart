import 'package:flutter/material.dart';

void main(List<String> args) {}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: App(),
      );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dkfnvdf'),
      ),
      body: Column(children: [
        const Text('40 C'),
        const SizedBox(height: 20),
        const Text('Tashkent'),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Get data'),
        )
      ]),
    );
  }
}
