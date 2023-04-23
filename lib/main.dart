import 'package:firstapp/src/utils/theme/text_theme.dart';
import 'package:firstapp/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';

// void main() => runApp(const App());
void main() {
  runApp(const MaterialApp(home: App(),));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const AppHome()
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(title: const Text(".appable/"), leading: const Icon(Icons.ondemand_video),),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.add_shopping_cart), onPressed: (){}),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
             Text("Heading", style: TTextTheme.darkTextTheme.headline2,),
             Text("Sub-Heading", style: TTextTheme.lightTextTheme.subtitle2,),
             Text("Paragraph", style: TTextTheme.darkTextTheme.bodyText2,),
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
