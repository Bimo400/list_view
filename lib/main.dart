import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<User> users = [
    User(nama: "Muhammad Nur Wahid Bimawan", contact: "081237111301", img: "images/bimo.jpeg"),
    User(nama: "Javier Gavra Abhinaya", contact: "085866478673", img: "images/gavra.jpeg"),
    User(nama: "Muhammad Firdan Azhari", contact: "085803426476", img: "images/firdan.jpeg"),
    User(nama: "Muhammad Zumar Ramadhan", contact: "089668046500", img: "images/zumar.jpeg"),
    User(nama: "Khoiru Rizal Kalam Ismail", contact: "085155370503", img: "images/kalam.jpeg"),
    User(nama: "Daffa Sauqi Sharif", contact: "085293142663", img: "images/daffa.jpeg"),
    User(nama: "Muh Wahyu Ageng Pambudi", contact: "082333621113", img: "images/wahyu.jpeg"),
    User(nama: "Adhafi Ilyas Sutejo", contact: "085237111944", img: "images/ilyas.jpeg"),
    User(nama: "Azzra Rinov Pahlevi", contact: "081997434827", img: "images/azzra.jpeg"),
    User(nama: "Wulan Febrianti", contact: "085345295419", img: "images/wulan.jpeg"),
    User(nama: "Hibatullah Fawwaz Hana", contact: "082777395326", img: "images/hiba.png"),
    User(nama: "Amri Iqro Samudra Al Fatihah", contact: "082342035817", img: "images/amri.jpeg"),
    User(nama: "Bayu Septian Kurniawan", contact: "0895424366222", img: "images/bayu.jpeg"),
    User(nama: "Akbar Rizkullah", contact: "081347464743", img: "images/akbar.jpeg"),
    User(nama: "Danar Gading", contact: "081225194519", img: "images/danar.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Siswa Kelas 11 PPLG 1"),
          backgroundColor: Color.fromARGB(255, 7, 130, 77),
        ),
        body: ListView.builder(
            padding: EdgeInsets.only(bottom: 20),
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              final User list = users[index];
              return InkWell(
                onTap: () {},
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage(users[index].img)),
                  title: Text(users[index].nama),
                  subtitle: Text(users[index].contact),
                ),
              );
            }));
  }
}

class User {
  String nama, contact, img;
  User({required this.nama, required this.contact, required this.img});
}