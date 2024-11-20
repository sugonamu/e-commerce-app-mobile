import 'package:flutter/material.dart';
import 'package:e_commerce/screens/productlist.dart';
import 'package:e_commerce/screens/menu.dart';
import 'package:e_commerce/screens/add_item_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.primary,
    ),
    child: const Column(
      children: [
        Text(
          'My E-Commerce Store',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Padding(padding: EdgeInsets.all(8)),
        Text(
          "This is my First E-Commerce Store",
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              color: Colors.white,
                ),
        ),
      ],
    ),
          ),
            ListTile(
    leading: const Icon(Icons.home_outlined),
    title: const Text('Home Page'),
    // Redirection part to MyHomePage
    onTap: () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ));
    },
  ),
  ListTile(
    leading: const Icon(Icons.add),
    title: const Text('Add Product'),
    // Redirection part to ProductentryFormpage
    onTap: () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const ProductEntryFormPage(),
          ));
    },
  ),
  ListTile(
    leading: const Icon(Icons.add_reaction_rounded),
    title: const Text('Product List'),
    onTap: () {
        // Route to the mood page
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProductEntryPage()),
        );
    },
),
        ],
      ),
    );
  }
}