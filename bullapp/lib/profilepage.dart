import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    return MaterialApp(
      home: MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://cdn01.indozone.id/local/5eec7b41f0da5.jpg'),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // aksi ketika tombol edit di tekan
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Smitty WerbenJagerManJensen',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star_border,
                color: Colors.yellow[700],
              ),
              SizedBox(width: 5),
              Text(
                'Premium',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Tambahkan deskripsi diri Anda',
              ),
              maxLines: 3,
              maxLength: 150, // jumlah karakter maksimal
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
