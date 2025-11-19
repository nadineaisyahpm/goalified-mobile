import 'package:flutter/material.dart';
import 'package:goalified_mobile/widgets/left_drawer.dart';
import 'package:goalified_mobile/screens/product_form.dart';
import 'package:goalified_mobile/screens/product_entry_list.dart';
import 'package:goalified_mobile/widgets/custom_app_bar.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final String nama = "Nadine Aisyah Putri Maharani";
  final String npm = "2406408224";
  final String kelas = "F";

  final List<ItemHomepage> items = [
  ItemHomepage("All Products", iconPath: "assets/images/all_prod_btn.png", color: Colors.blue),
  ItemHomepage("My Products", iconPath: "assets/images/my_prod_btn.png", color: Colors.green),
  ItemHomepage("Create Product", iconPath: "assets/images/create_prod_btn.png", color: Colors.red),
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Goalified."),
      drawer: LeftDrawer(),
      // Body halaman dengan padding di sekelilingnya.
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/goalified_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        // Menyusun widget secara vertikal dalam sebuah kolom.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row untuk menampilkan 3 InfoCard secara horizontal.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: nama),
                InfoCard(title: 'Class', content: kelas),
              ],
            ),

            // Memberikan jarak vertikal 16 unit.
            const SizedBox(height: 16.0),

            // Menempatkan widget berikutnya di tengah halaman.
            Center(
              child: Column(
                // Menyusun teks dan grid item secara vertikal.

                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 2),
                    margin: const EdgeInsets.only(top: 16),
                    decoration: BoxDecoration(
                      color: Colors.yellow, // background color
                      borderRadius: BorderRadius.circular(0), // rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  child: const Text(
                    'Welcome to Goalified, your One-Stop Shop for All Your Sports Needs!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black, // text color
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      ),
                    ),
                  ),

                  // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    // Agar grid menyesuaikan tinggi kontennya.
                    shrinkWrap: true,

                    // Menampilkan ItemCard untuk setiap item dalam list items.
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  // Kartu informasi yang menampilkan title dan content.

  final String title;  // Judul kartu.
  final String content;  // Isi kartu.

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
            ),
            const SizedBox(height: 5.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}

class ItemHomepage {
  final String name;
  final String? iconPath;
  final Color color;

  ItemHomepage(this.name, {this.iconPath, required this.color});
}

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
                SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!", style: TextStyle(fontFamily: 'Poppins'),))
              );

              if (item.name == "Create Product") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductFormPage()),
                );
              } else if (item.name == "All Products") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProductEntryListPage()
                      ),
                  );
              } else if (item.name == "My Products") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductEntryListPage(showOnlyMine: true),
                    ),
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