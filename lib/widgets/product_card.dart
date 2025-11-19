import 'package:flutter/material.dart';
import 'package:goalified_mobile/screens/product_entry_list.dart';
import 'package:goalified_mobile/screens/product_form.dart';
import 'package:goalified_mobile/screens/menu.dart'; // untuk ItemHomepage
import 'package:goalified_mobile/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatelessWidget {
  final ItemHomepage item;
  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return SizedBox(
      width: 120,
      height: 120,
      child: Material(
        color: item.color,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: () async {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text("Kamu telah menekan tombol ${item.name}"))
              );

            if (item.name == "Create Product") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductFormPage()),
              );
            } 
            else if (item.name == "All Products") {
              Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => const ProductEntryListPage())
              );
            }
            // Add this after your previous if statements
            else if (item.name == "Logout") {
                final response = await request.logout(
                    "http://localhost:8000/auth/logout/");
                String message = response["message"];
                if (context.mounted) {
                    if (response['status']) {
                        String uname = response["username"];
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("$message See you again, $uname."),
                        ));
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginPage()),
                        );
                    } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(message),
                            ),
                        );
                    }
                }
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (item.iconPath != null)
                  Image.asset(
                    item.iconPath!,
                    width: 50,
                    height: 50,
                  ),
                const SizedBox(height: 10),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'CourierPrime',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}