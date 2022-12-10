import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget  {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>with  SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag:'m' ,
                child: FlutterLogo(
                  size: 150,
                ),
              ),
              ElevatedButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondScreen()
              ));}, child: Text('second'))

            ],
          ),
        ),
      ),
    );

  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Hero(
          tag:'m' ,
          child: FlutterLogo(
            size: 300,
          ),
        ),
      ),
    );
  }
}


