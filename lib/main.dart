import 'package:flutter/material.dart';
import 'package:flutter_application_1/datamanager.dart';
import 'package:flutter_application_1/page/menupage.dart';
import 'package:flutter_application_1/page/offerspage.dart';
import 'package:flutter_application_1/page/orderpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Master',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // dataManger
  var dataManager = DataManger();
  // states
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    //Menu change
    Widget currentWidgetPage = const Text("ffdfd");
    switch (selectedIndex) {
      case 0:
        currentWidgetPage =  MenuPage(
          dataManger: dataManager,
        );
        break;
      case 1:
        currentWidgetPage = const OffersPage();
        break;
      case 2:
        currentWidgetPage =  OrderPage(
          dataManger: dataManager,
        );
        break;
      default:
        currentWidgetPage =  MenuPage(
          dataManger: dataManager,
        );
        break;
    }
    //Menu change
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("images/logo.png"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: "Menu", icon: Icon(Icons.coffee)),
          BottomNavigationBarItem(
              label: "Offers", icon: Icon(Icons.local_offer)),
          BottomNavigationBarItem(
              label: "Orders",
              icon: Icon(Icons.shopping_cart_checkout_outlined)),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.yellow.shade400,
        unselectedItemColor: Colors.brown.shade50,
        currentIndex: selectedIndex,
        onTap: (newIndex) {
          setState(() {
            selectedIndex = newIndex; //changing the state
          });
        },
      ),
      body: currentWidgetPage,
    );
  }
}
