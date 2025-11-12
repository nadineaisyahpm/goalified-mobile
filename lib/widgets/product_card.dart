import 'package:flutter/material.dart';
import 'package:goalified_mobile/screens/product_form.dart';
import 'package:goalified_mobile/screens/menu.dart'; // untuk ItemHomepage

class ItemCard extends StatelessWidget {
  final ItemHomepage item;
  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Material(
        color: item.color,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: () {
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