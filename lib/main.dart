import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      darkTheme: ThemeData(),
      home: AppHome()
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(".appable/"), leading: const Icon(Icons.ondemand_video),),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.add_shopping_cart), onPressed: (){}),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text("Heading"),
            const Text("Sub-Heading"),
            const Text("Paragraph"),
            ElevatedButton(onPressed: () {}, child: const Text("Elevated Button")),
            OutlinedButton(onPressed: () {}, child: const Text("Outlined Button")),
            const Padding(padding: EdgeInsets.all(20.0),
            child: Image(image: AssetImage("assets/images/book.jpg")),)
          ],
        ),
      ),
    );
  }
}
