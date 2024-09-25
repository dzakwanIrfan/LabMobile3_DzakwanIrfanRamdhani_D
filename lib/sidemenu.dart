import 'package:flutter/material.dart';
import 'home_page.dart';
import 'tambah_kontak_page.dart';

class SideMenu extends StatelessWidget {
  final List<Map<String, String>> contacts;

  const SideMenu({Key? key, required this.contacts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.indigo.shade300, Colors.indigo.shade100],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.contact_phone, size: 60, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    'Contact Manager',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Home', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(contacts: contacts),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add, color: Colors.white),
              title:
                  Text('Tambah Kontak', style: TextStyle(color: Colors.white)),
              onTap: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TambahKontakPage(),
                  ),
                );
                if (result != null) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HomePage(contacts: [...contacts, result]),
                    ),
                  );
                }
              },
            ),
            Divider(color: Colors.white54),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Versi 1.0.0',
                style: TextStyle(color: Colors.white54),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
