import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yukcatat/after_click_on_tick_screen.dart';

class MainTextScreen extends StatefulWidget {
  const MainTextScreen({Key? key}) : super(key: key);

  @override
  _MainTextScreenState createState() => _MainTextScreenState();
}

class _MainTextScreenState extends State<MainTextScreen> {
  final TextEditingController _textController = TextEditingController(
      text: "Mobile Programming Bismillah Nilai A");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFE8CEE4),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon:
                          SvgPicture.asset("assets/images/img_arrow_left.svg"),
                      onPressed: () {
                        // Aksi ketika tombol back ditekan
                        Navigator.of(context).pop();
                      },
                      iconSize: 24,
                    ),
                    const Text(
                      "Title",
                      style: TextStyle(
                        color: Color(0XFF5D576B),
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      icon: SvgPicture.asset("assets/images/img_done.svg"),
                      onPressed: () {
                        // Kirim teks ke AfterClickOnTickScreen saat "Done" ditekan
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AfterClickOnTickScreen(
                              text: _textController.text,
                            ),
                          ),
                        );
                      },
                      iconSize: 24,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
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
                const SizedBox(height: 46),
                // Multiline TextField to edit the title without border
                TextField(
                  controller: _textController,
                  maxLines: null, // Agar bisa menulis teks panjang tanpa batas
                  style: const TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none, // Menghilangkan border
                    isDense: true, // Menghilangkan padding ekstra
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Bottom Navigation Bar with clickable items
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: const BoxDecoration(
        color: Color(0XFF5D576B),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              // Aksi untuk checklist
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset("assets/images/img_check_ring.svg",
                    height: 34),
                const SizedBox(height: 4),
                const Text(
                  "Checklist",
                  style: TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              // Aksi untuk style
              print("Style clicked");
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset("assets/images/img_sort_alfa.svg", height: 34),
                const SizedBox(height: 4),
                const Text(
                  "Style",
                  style: TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              // Aksi untuk gallery
              print("Gallery clicked");
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset("assets/images/img_img_box_fill.svg",
                    height: 34),
                const SizedBox(height: 4),
                const Text(
                  "Gallery",
                  style: TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}