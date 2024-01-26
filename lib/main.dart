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
      drawer: Drawer(
        child: ListView(
          children: [
             UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Colors.green),
            accountName: const Text("Abdullah Al Mahmud"),
            accountEmail: const Text("info@mahmud.com"),
            currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTql7QO1cKJ2vGPissyg8P5dvN0F0fmajfgtEoaIywuRg&s"),
            onDetailsPressed: ()=> mySnackBar("This is Abdullah's Profile", context),
            
            ),
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () => mySnackBar("Home", context),
            ),
            ListTile(
              title: const Text("Contact"),
              leading: const Icon(Icons.message),
              onTap: () => mySnackBar("Home", context),
            ),
            ListTile(
              title: const Text("Email"),
              leading: const Icon(Icons.email),
              onTap: () => mySnackBar("Home", context),
            ),
            ListTile(
              title: const Text("Phone"),
              leading: const Icon(Icons.phone),
              onTap: () => mySnackBar("Home", context),
            ),
            ListTile(
              title: const Text("Profile"),
              leading: const Icon(Icons.person),
              onTap: () => mySnackBar("Home", context),
            ),
          ],
        ),
      ),
    );
  }
}
