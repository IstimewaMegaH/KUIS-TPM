import 'package:flutter/widgets.dart';

class ProfilePage extends StatelessWidget {
  final String nama;
  final String username;
  final String email;
  final String nomor;
  final String alamat;

  const ProfilePage({
    Key? key,
    required this.nama,
    required this.username,
    required this.email,
    required this.nomor,
    this.alamat = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Profil"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 24,
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 36),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Kembali'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 18,
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {
    Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) {
    return LoginPage();
    }),
    (route) => false,
    );
    },
                },
                child: Text("Logout"),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 18,
                  ),
                ),
              ),
              Text(
                "Biodata",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24),
              FlutterLogo(size: 150),
              SizedBox(height: 12),
              Text(
                nama,
                style: TextStyle(
                  fontSize: 20,

                  fontWeight: FontWeight.bold,

                ),
              ),
              SizedBox(height: 8),
              Text(
                username,
                style: TextStyle(
                  fontSize: 16,

                  fontStyle: FontStyle.italic,

                ),
              ),
              SizedBox(height: 24),
              Text(
                email,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                nomor,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                alamat,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}