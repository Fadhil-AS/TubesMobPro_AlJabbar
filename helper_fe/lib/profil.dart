import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF47A992),
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Profil",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        body:
            ProfilDetail(), 
      ),
    );
  }
}

class ProfilDetail extends StatefulWidget {
  @override
  _ProfilDetailState createState() => _ProfilDetailState();
}

class _ProfilDetailState extends State<ProfilDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius:
                            40, 
                        backgroundColor: Colors.grey, 
                        child: Icon(
                          Icons.account_circle, 
                          size: 60, 
                          color: Colors.white, 
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Heru Knalpot',
                        style: TextStyle(
                            color: Color.fromARGB(255, 71, 169, 146),
                            fontWeight: FontWeight.bold,
                            fontSize: 26),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Email',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'asepknalpot@gmail.com',
                    style: TextStyle(
                        color: Color.fromARGB(255, 71, 169, 146),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Tanggal Lahir',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '22-22-2222',
                    style: TextStyle(
                        color: Color.fromARGB(255, 71, 169, 146),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'NIK',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '3210234042102312',
                    style: TextStyle(
                        color: Color.fromARGB(255, 71, 169, 146),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60,),
            ElevatedButton(
              onPressed: () {
                // Aksi ketika tombol ditekan
              },
              style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                      minimumSize: Size(300, 20),
                      backgroundColor: Colors.red,
                    ),
              child: Text(
                'Keluar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
