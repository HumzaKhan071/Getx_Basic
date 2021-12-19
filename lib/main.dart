import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      getPages: [
        GetPage(name: "/", page: () => HomePage()),
        GetPage(name: "/SecondPage", page: () => SecondPage()),
      ],
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.snackbar("Getx Snack Bar", "Hi i am Snack Bar",
                    snackPosition: SnackPosition.BOTTOM,
                    duration: Duration(seconds: 1),
                    backgroundColor: Colors.grey[900],
                    colorText: Colors.white);
              },
              child: Text("Show SnackBar")),
          ElevatedButton(
              onPressed: () {
                Get.defaultDialog(title: "ALert", content: Text("I am dialog"));
              },
              child: Text("Show Dialog")),
          ElevatedButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  color: Colors.black,
                  height: 120,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "I am bottom sheet",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "I am bottom sheet",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ));
              },
              child: Text("Show Bottom Sheet")),
          ElevatedButton(
              onPressed: () {
                // Get.to(SecondPage(),

                Get.offNamed("/SecondPage",
                    arguments: "Hi From Home Page",
                    );
              },
              child: Text("Go to Second Page"))
        ],
      ),
    );
  }
}
