import 'package:flutter/material.dart';
import 'package:yukcatat/home_screen.dart';

class SplashScreenTwoScreen extends StatefulWidget {
  const SplashScreenTwoScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenTwoScreenState createState() => _SplashScreenTwoScreenState();
}

class _SplashScreenTwoScreenState extends State<SplashScreenTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFD7BCE8), // Latar belakang ungu muda
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              // Teks di atas
              Text(
                "Welcome to",
                style: TextStyle(
                  color: Color(0XFF5D576B),
                  fontSize: 28,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "YukCatat",
                style: TextStyle(
                  color: Color(0XFF5D576B),
                  fontSize: 36,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 30),
              // Gambar ikon
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Image.asset(
                  "assets/images/img_pngtree_simple.png",
                  height: 180, // Ukuran gambar
                ),
              ),
              const SizedBox(height: 60), // Jarak antara gambar dan tombol
              // Tombol "Get Started"
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0XFF2F2E41), // Warna tombol
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25), // Sudut tombol lebih halus
                  ),
                ),
                onPressed: () {
                  // Navigasi ke halaman berikutnya (HomeScreen)
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeAppScreen()), // Ganti dengan HomeScreen
                  );
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 50), // Beri jarak bawah
            ],
          ),
        ),
      ),
    );
  }
}

// Halaman HomeScreen
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Welcome to the Home Screen!'),
      ),
    );
  }
}