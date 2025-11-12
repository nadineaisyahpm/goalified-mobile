# Jawaban Pertanyaan Tugas 7 PBP

## 1. Apa itu Widget Tree pada Flutter dan bagaimana hubungan parent-child bekerja antar widget
Widget tree adalah susunan hierarki dari seluruh widget yang membentuk tampilan aplikasi Flutter. Setiap widget akan menjadi bagian dari pohon tersebut, mulai dari widget paling atas hingga elemen kecil di dalamnya. Dalam hubungan parent‑child, widget parent bertanggung jawab memberikan batas ukuran dan tata letak kepada widget child. Child lalu menentukan ukurannya berdasarkan batas tersebut, dan parent menempatkannya sesuai layout. Hierarki ini memastikan struktur UI tetap rapi serta memudahkan update tampilan ketika terjadi perubahan pada widget tertentu.

## 2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya
Contoh widget yang digunakan dalam proyek ini antara lain: MaterialApp untuk mengatur tema dan navigasi aplikasi, Scaffold sebagai struktur dasar halaman, serta AppBar untuk menampilkan judul di bagian atas. Widget seperti Column, Row, dan Container digunakan untuk menyusun tampilan serta memberikan ruang atau dekorasi. Selain itu, terdapat widget interaktif seperti ElevatedButton untuk aksi pengguna dan TextField untuk input data. Masing‑masing widget memiliki fungsi spesifik sehingga UI dapat dibangun secara terstruktur.

## 3. Apa fungsi dari widget MaterialApp? Mengapa widget ini sering digunakan sebagai widget root?
MaterialApp berfungsi sebagai konfigurasi utama aplikasi yang menggunakan Material Design, seperti tema, navigasi antar halaman, dan pengaturan tampilan dasar lainnya. Dengan menempatkan MaterialApp sebagai widget root, seluruh widget di dalam aplikasi mendapatkan akses terhadap fitur‑fitur ini. Hal ini memudahkan pengelolaan navigasi dan konsistensi gaya UI di seluruh halaman aplikasi, sehingga MaterialApp hampir selalu digunakan pada tingkat paling atas aplikasi Flutter.

## 4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
StatelessWidget digunakan ketika tampilan tidak bergantung pada perubahan data, sehingga sekali dibuat tampilannya akan tetap. Sebaliknya, StatefulWidget digunakan ketika tampilan harus berubah menyesuaikan interaksi atau data baru, misalnya ketika ada input pengguna atau animasi. Pemilihan widget bergantung pada apakah widget tersebut membutuhkan penyimpanan state atau tidak. Jika UI selalu sama dan hanya menerima data dari luar, gunakan StatelessWidget; tetapi jika perlu memperbarui tampilan berdasarkan perubahan internal, gunakan StatefulWidget.

## 5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
BuildContext adalah objek yang menunjukkan posisi suatu widget di dalam widget tree. Dengan context, widget bisa mengakses informasi dari parent‑nya seperti ukuran layar, tema, navigasi, dan data yang diwariskan widget lain. Dalam metode build, context digunakan untuk memanggil berbagai fungsi seperti Theme.of(context) atau Navigator.of(context) agar tampilan dapat beradaptasi dengan lingkungannya. Karena itu, BuildContext sangat penting dalam membangun UI yang dinamis dan terhubung dengan struktur aplikasi.

## 6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart"
Hot reload memungkinkan pengembang melihat perubahan kode secara langsung tanpa kehilangan state aplikasi, sehingga proses pengembangan menjadi jauh lebih cepat. Berbeda dengan itu, hot restart akan memulai ulang aplikasi dari awal dan menghapus seluruh state yang sudah berjalan sebelumnya. Hot restart digunakan ketika perubahan kode memengaruhi bagian awal aplikasi, sedangkan hot reload cocok untuk perubahan UI dan logika ringan saat aplikasi sedang berjalan.

# Jawaban Pertanyaan Tugas 8 PBP

## 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
Navigator.push() menambahkan halaman baru ke atas stack navigasi, sehingga pengguna masih dapat kembali ke halaman sebelumnya dengan tombol back. Sementara itu, Navigator.pushReplacement() menggantikan halaman yang sedang ditampilkan dengan halaman baru, dan halaman sebelumnya dihapus dari stack sehingga tidak dapat kembali ke halaman semula.

Pada aplikasi Goalified, Navigator.push() cocok digunakan pada tombol Create Product di halaman utama, karena setelah selesai mengisi form, pengguna mungkin ingin kembali ke halaman Home. Sedangkan Navigator.pushReplacement() lebih tepat digunakan pada navigasi melalui Drawer, seperti saat berpindah ke halaman All Products atau My Products, agar halaman Home tidak menumpuk ketika melakukan navigasi berulang melalui menu samping.

## 2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
Saya menggunakan Scaffold sebagai struktur utama setiap halaman, yang menyediakan slot untuk AppBar, Drawer, dan body. AppBar digunakan untuk menampilkan branding aplikasi "Goalified." dengan warna, gaya teks, dan icon navigation yang seragam di semua halaman. Selain itu, Drawer digunakan sebagai navigasi global antar halaman sehingga pengalaman berpindah halaman terasa konsisten. Dengan hierarchy ini, semua halaman memiliki tampilan dan struktur UI yang seragam, sehingga pengguna mudah beradaptasi di seluruh bagian aplikasi.

## 3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
- Widget seperti Padding, SingleChildScrollView, dan ListView mempermudah penataan form agar tetap nyaman digunakan:
- Padding menjaga jarak antar elemen sehingga form terlihat rapi dan tidak terlalu mepet satu sama lain.
- SingleChildScrollView membuat seluruh form dapat discroll ketika tinggi konten lebih besar dari layar, mencegah overflow saat keyboard muncul.
- ListView atau Column digunakan untuk menata input secara vertikal sehingga pengguna dapat mengisi data dengan alur yang jelas.

Contohnya pada halaman Create Product, input seperti nama produk, harga, deskripsi, dan tombol submit dibungkus Padding untuk memberi ruang, serta ditempatkan dalam SingleChildScrollView agar seluruh elemen tetap bisa diakses pada layar kecil.

## 4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
Saya menyesuaikan warna aplikasi agar mencerminkan brand Goalified, yaitu kesan sporty dan modern. Warna hitam digunakan sebagai warna utama AppBar untuk memberikan kesan bold, sementara warna pada setiap card item menu (biru, hijau, merah) membedakan kategori fitur tanpa menghilangkan kesan energik. Selain itu, warna ikon pada Drawer dan AppBar seperti hamburger menu juga diseragamkan menjadi putih untuk meningkatkan keterlihatan dan menjaga konsistensi desain. Penyesuaian ini membantu memperkuat identitas visual aplikasi sehingga terlihat profesional dan mudah dikenali.