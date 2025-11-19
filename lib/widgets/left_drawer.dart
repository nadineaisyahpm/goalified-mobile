import 'package:flutter/material.dart';
import 'package:goalified_mobile/screens/menu.dart';
import 'package:goalified_mobile/screens/product_form.dart';
import 'package:goalified_mobile/screens/product_entry_list.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              children: [
                Text(
                  'Goalified.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.bold, // Poppins-Bold = weight 700
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Shop your Favorite Sports Essentials in One Place!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    fontWeight: FontWeight.w500, // Poppins-Medium = weight 500
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home Page', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 15)),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.post_add),
            title: const Text('Create Product', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 15),),
            onTap: () {
             Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductFormPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_reaction_rounded),
            title: const Text('Product List', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 15),),
            onTap: () {
                // Route to news list page
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProductEntryListPage()),
                );
            },
        ),
        ],
      ),
    );
  }
}