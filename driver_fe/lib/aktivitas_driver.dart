import 'package:flutter/material.dart';
import 'map.dart';

class AktivitasDriver extends StatelessWidget {
  const AktivitasDriver({Key? key}) : super(key: key);

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
                "Aktivitas",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          body: AktivitasDetail()),
    );
  }
}

class AktivitasItem {
  final String kotaAsal;
  final String kotaTujuan;
  final String jamAsal;
  final String jamTujuan;
  final String tanggal;

  AktivitasItem({
    required this.kotaAsal,
    required this.kotaTujuan,
    required this.jamAsal,
    required this.jamTujuan,
    required this.tanggal,
  });
}

class AktivitasDetail extends StatefulWidget {
  @override
  _AktivitasDetailState createState() => _AktivitasDetailState();
}

class _AktivitasDetailState extends State<AktivitasDetail> {
  // List untuk setiap kategori
  final List<List<AktivitasItem>> data = [
    [
      AktivitasItem(
        kotaAsal: 'Bandung',
        kotaTujuan: 'Jakarta',
        jamAsal: '07.30',
        jamTujuan: '08.00',
        tanggal: '07 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Surabaya',
        kotaTujuan: 'Malang',
        jamAsal: '09.00',
        jamTujuan: '11.00',
        tanggal: '08 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Yogyakarta',
        kotaTujuan: 'Semarang',
        jamAsal: '10.30',
        jamTujuan: '12.00',
        tanggal: '09 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Jakarta',
        kotaTujuan: 'Bandung',
        jamAsal: '14.00',
        jamTujuan: '15.30',
        tanggal: '10 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Malang',
        kotaTujuan: 'Surabaya',
        jamAsal: '16.30',
        jamTujuan: '18.00',
        tanggal: '11 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Semarang',
        kotaTujuan: 'Yogyakarta',
        jamAsal: '19.00',
        jamTujuan: '20.30',
        tanggal: '12 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Bandung',
        kotaTujuan: 'Surabaya',
        jamAsal: '21.30',
        jamTujuan: '23.00',
        tanggal: '13 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Jakarta',
        kotaTujuan: 'Yogyakarta',
        jamAsal: '07.30',
        jamTujuan: '09.00',
        tanggal: '14 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Surabaya',
        kotaTujuan: 'Semarang',
        jamAsal: '10.00',
        jamTujuan: '11.30',
        tanggal: '15 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Yogyakarta',
        kotaTujuan: 'Jakarta',
        jamAsal: '12.30',
        jamTujuan: '14.00',
        tanggal: '16 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Malang',
        kotaTujuan: 'Bandung',
        jamAsal: '15.00',
        jamTujuan: '16.30',
        tanggal: '17 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Semarang',
        kotaTujuan: 'Surabaya',
        jamAsal: '17.30',
        jamTujuan: '19.00',
        tanggal: '18 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Bandung',
        kotaTujuan: 'Yogyakarta',
        jamAsal: '20.00',
        jamTujuan: '21.30',
        tanggal: '19 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Jakarta',
        kotaTujuan: 'Surabaya',
        jamAsal: '08.30',
        jamTujuan: '10.00',
        tanggal: '20 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Surabaya',
        kotaTujuan: 'Jakarta',
        jamAsal: '11.00',
        jamTujuan: '12.30',
        tanggal: '21 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Yogyakarta',
        kotaTujuan: 'Malang',
        jamAsal: '13.30',
        jamTujuan: '15.00',
        tanggal: '22 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Malang',
        kotaTujuan: 'Semarang',
        jamAsal: '16.00',
        jamTujuan: '17.30',
        tanggal: '23 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Semarang',
        kotaTujuan: 'Jakarta',
        jamAsal: '18.30',
        jamTujuan: '20.00',
        tanggal: '24 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Bandung',
        kotaTujuan: 'Surabaya',
        jamAsal: '21.00',
        jamTujuan: '22.30',
        tanggal: '25 Jan 2024',
      )
    ],
    [
      AktivitasItem(
        kotaAsal: 'Yogyakarta',
        kotaTujuan: 'Semarang',
        jamAsal: '10.00',
        jamTujuan: '12.00',
        tanggal: '10 Jan 2024',
      ),
    ],
    [
      AktivitasItem(
        kotaAsal: 'Medan',
        kotaTujuan: 'Bali',
        jamAsal: '08.30',
        jamTujuan: '10.30',
        tanggal: '15 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Manado',
        kotaTujuan: 'Makassar',
        jamAsal: '11.00',
        jamTujuan: '13.00',
        tanggal: '17 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Yogyakarta',
        kotaTujuan: 'Semarang',
        jamAsal: '10.30',
        jamTujuan: '12.00',
        tanggal: '09 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Jakarta',
        kotaTujuan: 'Bandung',
        jamAsal: '14.00',
        jamTujuan: '15.30',
        tanggal: '10 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Malang',
        kotaTujuan: 'Surabaya',
        jamAsal: '16.30',
        jamTujuan: '18.00',
        tanggal: '11 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Semarang',
        kotaTujuan: 'Yogyakarta',
        jamAsal: '19.00',
        jamTujuan: '20.30',
        tanggal: '12 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Bandung',
        kotaTujuan: 'Surabaya',
        jamAsal: '21.30',
        jamTujuan: '23.00',
        tanggal: '13 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Jakarta',
        kotaTujuan: 'Yogyakarta',
        jamAsal: '07.30',
        jamTujuan: '09.00',
        tanggal: '14 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Surabaya',
        kotaTujuan: 'Semarang',
        jamAsal: '10.00',
        jamTujuan: '11.30',
        tanggal: '15 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Yogyakarta',
        kotaTujuan: 'Jakarta',
        jamAsal: '12.30',
        jamTujuan: '14.00',
        tanggal: '16 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Malang',
        kotaTujuan: 'Bandung',
        jamAsal: '15.00',
        jamTujuan: '16.30',
        tanggal: '17 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Semarang',
        kotaTujuan: 'Surabaya',
        jamAsal: '17.30',
        jamTujuan: '19.00',
        tanggal: '18 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Bandung',
        kotaTujuan: 'Yogyakarta',
        jamAsal: '20.00',
        jamTujuan: '21.30',
        tanggal: '19 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Jakarta',
        kotaTujuan: 'Surabaya',
        jamAsal: '08.30',
        jamTujuan: '10.00',
        tanggal: '20 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Surabaya',
        kotaTujuan: 'Jakarta',
        jamAsal: '11.00',
        jamTujuan: '12.30',
        tanggal: '21 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Yogyakarta',
        kotaTujuan: 'Malang',
        jamAsal: '13.30',
        jamTujuan: '15.00',
        tanggal: '22 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Malang',
        kotaTujuan: 'Semarang',
        jamAsal: '16.00',
        jamTujuan: '17.30',
        tanggal: '23 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Semarang',
        kotaTujuan: 'Jakarta',
        jamAsal: '18.30',
        jamTujuan: '20.00',
        tanggal: '24 Jan 2024',
      ),
      AktivitasItem(
        kotaAsal: 'Bandung',
        kotaTujuan: 'Surabaya',
        jamAsal: '21.00',
        jamTujuan: '22.30',
        tanggal: '25 Jan 2024',
      )
    ],
  ];

  int currentListIndex = 0;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {

    final List<AktivitasItem> currentData = data[currentListIndex];

    final List<List<AktivitasItem>> pages = [];
    for (int i = 0; i < currentData.length; i += 4) {
      pages.add(currentData.sublist(
          i, i + 4 > currentData.length ? currentData.length : i + 4));
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 55,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(right: 10, left: 15, top: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentListIndex =
                            index; 
                        currentPage = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 12.0),
                      minimumSize: Size(100, 20),
                      backgroundColor: Color.fromARGB(255, 235, 235, 235),
                    ),
                    child: Text(
                      index == 0
                          ? 'Selanjutnya'
                          : (index == 1 ? 'Proses' : 'Selesai'),
                      style: TextStyle(
                          color: index == currentListIndex
                              ? Color.fromARGB(255, 66, 66, 66)
                              : Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount:
                    pages[currentPage].length + (pages.length > 1 ? 1 : 0),
                itemBuilder: (BuildContext context, int index) {
                  if (index == pages[currentPage].length && pages.length > 1) {
                    // Tampilkan pagination
                    return Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          pages.length,
                          (pageIndex) => Padding(
                            padding: const EdgeInsets.only(top: 25.0, left: 3.0, right: 3.0),
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  currentPage = pageIndex;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                padding: EdgeInsets.all(5.0),
                                backgroundColor: currentPage == pageIndex
                                    ? Color.fromARGB(
                                                            255,
                                                            71,
                                                            169,
                                                            146)
                                    : Colors.white,
                                minimumSize: Size(35, 50),
                              ),
                              child: Text(
                                (pageIndex + 1).toString(),
                                style: TextStyle(
                                  color: currentPage == pageIndex
                                      ? Colors.white
                                      : Color.fromARGB(
                                                            255,
                                                            71,
                                                            169,
                                                            146),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    final item = pages[currentPage][index];
                    return GestureDetector(
                      onTap: () {
                        if (currentListIndex == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MapView()),
                          );
                        }
                      },
                      child: Container(
                        child: Positioned.fill(
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              margin: EdgeInsets.only(top: 12.0),
                              width: 340,
                              height: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 0, top: 6.0),
                                        child: Container(
                                          width: 100,
                                          child: Center(
                                            child: Text('${item.jamAsal}',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey)),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 6.0),
                                        child: Container(
                                          width: 25,
                                          child: Center(
                                            child: Text('',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey)),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 6.0),
                                        child: Container(
                                          width: 100,
                                          child: Center(
                                            child: Text('${item.jamTujuan}',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          4),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 0),
                                        child: Container(
                                          width: 100,
                                          child: Center(
                                            child: Text('${item.kotaAsal}',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 71, 169, 146))),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0.0),
                                        child: Center(
                                          child: Container(
                                            width: 25,
                                            child: Text('>>',
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 71, 169, 146))),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 0),
                                        child: Container(
                                          width: 100,
                                          child: Center(
                                            child: Text('${item.kotaTujuan}',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 71, 169, 146))),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          4),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 22.0, bottom: 6.0),
                                    child: Text('${item.tanggal}',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 128, 128, 128))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}