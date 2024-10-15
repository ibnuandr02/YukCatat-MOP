import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yukcatat/home_screen.dart';

class AfterClickOnTickScreen extends StatelessWidget {
  final String text; // Parameter untuk menerima teks

  const AfterClickOnTickScreen({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFE8CEE4),
        body: Column(
          children: [
            _buildStackTitleSection(context),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text, // Menampilkan teks yang dikirim
                      style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 17,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: _buildBottomBarSection(context),
      ),
    );
  }

  Widget _buildStackTitleSection(BuildContext context) {
    return Container(
      height: 72,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          // Tombol kembali dengan ikon panah
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: IconButton(
                icon: Image.asset(
                  "assets/images/img_arrow_left.png",
                  height: 22,
                  width: 24,
                ),
                onPressed: () {
                  // Arahkan ke halaman "After Saving Recent Note" (HomeAppScreen)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeAppScreen(),
                    ),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Title",
              style: TextStyle(
                color: Color(0XFF5D576B),
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "Today 6:45 pm",
              style: TextStyle(
                color: Color(0X7F000000),
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBarSection(BuildContext context) {
    return SizedBox(
      height: 54,
      width: double.maxFinite,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Color(0XFF5D576B),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset("assets/images/img_star.svg"),
                  Text(
                    "Favourite",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset("assets/images/img_trash.svg"),
                  Text(
                    "Delete",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}