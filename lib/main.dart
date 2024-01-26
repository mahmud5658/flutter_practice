import 'package:flutter/material.dart';

main() {
  runApp(const MyApp()); // application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        title: "Flutter Practice",
        theme: ThemeData(
          primarySwatch: Colors.green,
          useMaterial3: true,
        ),
        home: const HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});
  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Inventory Application",
          style: TextStyle(color: Colors.white),
        ),
        titleSpacing: 10,
        // centerTitle: true,
        toolbarHeight: 60,
        // toolbarOpacity: 1,
        elevation: 20,
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("This is comment", context);
            },
            icon: const Icon(
              Icons.comment,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("This is search", context);
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("This is settings", context);
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mySnackBar("Floating action button", context);
        },
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        elevation: 10,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        onTap: (int index) {
          if (index == 0) {
            mySnackBar("Home Button", context);
          }
          if (index == 1) {
            mySnackBar("Contact Button", context);
          }
          if (index == 2) {
            mySnackBar("Profile Button", context);
          }
        },
        backgroundColor: Colors.green,
      ),
    );
  }
}
