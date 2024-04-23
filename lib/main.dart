import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Data Diri Saya';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: Column(
          children: [
            // Section for Profile Image and Information
            ProfileSection(
              profileImage: const AssetImage('assets/foto.jpg'),
              name: 'Awan Restu Listyanto',
              nim: 'STI202102395',
            ),
            // Section for Button Actions
            ButtonSection(),
            // Section for Text Description
            TextSection(
              description:
                  'Hallo, perkenalkan nama saya Awan Restu Listyanto biasa dipanggil Awan. Saya kelahiran Banyumas, 28 November 2002. Sekarang saya tinggal di Desa Karangdadap, Kec. Kalibagor, Kab. Banyumas. Saya sedang menempuh pendidikan sarjana di STMIK Widya Utama Purwokerto mengambil jurusan Teknik Informatika dan sekarang saya sudah semester 6.',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    Key? key,
    required this.profileImage,
    required this.name,
    required this.nim,
  }) : super(key: key);

  final ImageProvider profileImage;
  final String name;
  final String nim;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 15), // Menambahkan spasi di atas foto profil
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image(
            image: profileImage,
            width: 180, // Lebar sesuai kebutuhan
            height: 300, // Tinggi sesuai kebutuhan
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
            height: 5), // Menambahkan spasi antara foto profil dan teks
        Text(
          name,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5), // Menambahkan spasi antara nama dan NIM
        Text(
          'NIM: $nim',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[600],
            
          ),
        ),
        const SizedBox(height: 8), // Menambahkan spasi di bawah NIM
        const Divider(), // Garis pembatas
      ],
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton.icon(
          onPressed: () {
            // Action when Call button is pressed
          },
          icon: const Icon(
            Icons.call,
            color: Colors.blue, // Mengubah warna ikon menjadi biru
          ),
          label: Text(
            'CALL: 085841996044',
            style: TextStyle(
              color: Colors.blue, // Mengubah warna teks menjadi biru
            ),
          ),
          style: ElevatedButton.styleFrom(),
        ),
        ElevatedButton.icon(
          onPressed: () {
            // Action when Route button is pressed
          },
          icon: const Icon(
            Icons.directions,
            color: Colors.blue, // Mengubah warna ikon menjadi biru
          ),
          label: Text(
            'ROUTE: Jln. Kalibener Desa Karangdadap',
            style: TextStyle(
              color: Colors.blue, // Mengubah warna teks menjadi biru
            ),
          ),
          style: ElevatedButton.styleFrom(),
        ),
        ElevatedButton.icon(
          onPressed: () {
            // Action when Email button is pressed
          },
          icon: const Icon(
            Icons.email, // Mengubah ikon menjadi ikon email
            color: Colors.blue, // Mengubah warna ikon menjadi biru
          ),
          label: Text(
            'EMAIL: awanrestu1@gmail.com', // Mengubah teks menjadi "EMAIL"
            style: TextStyle(
              color: Colors.blue, // Mengubah warna teks menjadi biru
              
            ),
          ),
          style: ElevatedButton.styleFrom(),
        ),
        const SizedBox(height: 5),
        const Divider(), // Garis pembatas 
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tentang Saya:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5), // Spasi antara judul dan deskripsi
          Text(
            description,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}


