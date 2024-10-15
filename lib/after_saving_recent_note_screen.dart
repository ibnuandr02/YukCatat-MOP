import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AfterSavingNoteScreen extends StatefulWidget {
  final String noteText; // Parameter untuk menerima teks catatan

  AfterSavingNoteScreen({Key? key, required this.noteText}) : super(key: key);

  @override
  State<AfterSavingNoteScreen> createState() => _AfterSavingNoteScreenState();
}

class _AfterSavingNoteScreenState extends State<AfterSavingNoteScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFD7BCE8),
        appBar: _buildAppBar(context),
        body: _buildBody(context),
        bottomNavigationBar: _buildBottomNavigationBar(),
        floatingActionButton: _buildFloatingActionButton(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      toolbarHeight: 70,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Ibnu",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Good Morning",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: SvgPicture.asset(
            "assets/images/img_darhboard.svg",
            height: 26,
            width: 28,
          ),
        ),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSearchBox(),
          SizedBox(height: 12),
          _buildAllNotesRow(),
          SizedBox(height: 12),
          _buildNoteItem(widget.noteText), // Tampilkan catatan yang baru dibuat
        ],
      ),
    );
  }

  Widget _buildSearchBox() {
    return Container(
      width: double.infinity,
      child: TextFormField(
        controller: searchController,
        decoration: InputDecoration(
          hintText: "Search note",
          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset(
              "assets/images/img_search.svg",
              height: 28,
              width: 28,
            ),
          ),
          filled: true,
          fillColor: Color(0xFFFDE2FF),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _buildAllNotesRow() {
    return Row(
      children: [
        Text(
          "All Notes",
          style: TextStyle(
            color: Color(0xFF5C5C5C),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        Icon(
          Icons.arrow_drop_down,
          color: Color(0xFF5C5C5C),
        ),
      ],
    );
  }

  Widget _buildNoteItem(String noteText) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xFFFDE2FF),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            noteText, // Menampilkan teks catatan yang diterima
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "6:45 pm",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomAppBar(
      color: Color(0xFF5D576B),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    "assets/images/img_book_duotone.svg",
                    height: 24,
                    color: Color(0xFF8884FF),
                  ),
                  Text(
                    "Notes",
                    style: TextStyle(
                      color: Color(0xFF8884FF),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    "assets/images/img_check_ring.svg",
                    height: 24,
                    color: Colors.white,
                  ),
                  Text(
                    "To-do",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              label: '',
            ),
          ],
          onTap: (index) {
            if (index == 0) {
              // Arahkan ke halaman Notes ketika item Notes di-tap
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AfterSavingNoteScreen(noteText: "")),
              );
            } else if (index == 1) {
              // Arahkan ke halaman To-do ketika item To-do di-tap
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AfterSavingNoteScreen(noteText: "")),
              );
            }
          },
        ),
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return FloatingActionButton(
      backgroundColor: Color(0xFF8884FF),
      onPressed: () {},
      child: SvgPicture.asset(
        "assets/images/img_add_button.svg",
        height: 24,
        width: 24,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AfterSavingNoteScreen(noteText: ""),
  ));
}