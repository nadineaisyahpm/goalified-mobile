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
