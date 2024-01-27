import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListViewWidget extends StatelessWidget {
  ListViewWidget({super.key});

  var myItems = [
    {"image": "https://rabbil.com/files/flutterX1.png", "title": "Abdullah"},
    {"image": "https://rabbil.com/files/flutterX1.png", "title": "Bappy"},
    {"image": "https://rabbil.com/files/flutterX1.png", "title": "Raihan"},
    {"image": "https://rabbil.com/files/flutterX1.png", "title": "Moinul"},
    {"image": "https://rabbil.com/files/flutterX1.png", "title": "Rabiul"},
    {"image": "https://rabbil.com/files/flutterX1.png", "title": "Akash"},
    {"image": "https://rabbil.com/files/flutterX1.png", "title": "Hasan"},
    {"image": "https://rabbil.com/files/flutterX1.png", "title": "Sumaya"},
    {"image": "https://rabbil.com/files/flutterX1.png", "title": "Naurin"},
  ];

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Dynamic List View",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
          childAspectRatio: 1.2,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                mySnackBar(myItems[index]["title"], context);
              },
              child: SizedBox(
                // margin: const EdgeInsets.all(10),
                height: 220,
                width: double.infinity,
                child: Image.network(
                  myItems[index]['image']!,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
          itemCount: myItems.length,
        ));
  }
}
