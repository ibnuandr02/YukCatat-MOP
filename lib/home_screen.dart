import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yukcatat/after_saving_recent_note_screen.dart';
import 'package:yukcatat/main_text_screen.dart';

class HomeAppScreen extends StatefulWidget {
  HomeAppScreen({Key? key}) : super(key: key);

  @override
  State<HomeAppScreen> createState() => _HomeAppScreenState();
}

class _HomeAppScreenState extends State<HomeAppScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFD7BCE8),
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Search bar section
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: TextFormField(
                  controller: searchController,
                  onChanged: (value) {
                    print("Search input: $value");
                  },
                  decoration: InputDecoration(
                    hintText: "Search note",
                    hintStyle: const TextStyle(color: Colors.black45),
                    prefixIcon: const Icon(Icons.search, color: Colors.black),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () => searchController.clear(),
                    ),
                    filled: true,
                    fillColor: const Color(0XFFFDE2FF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              // "All Notes" section with clickable triangle button
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "All Notes",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(width: 4), // Space between text and triangle
                    IconButton(
                      iconSize: 16, // Adjust the size of the triangle
                      icon: Icon(Icons.arrow_drop_down, color: Colors.black87),
                      onPressed: () {
                        // Add the functionality for the button when clicked
                        print("Triangle button pressed");
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0XFF5D576B),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.note, color: Colors.white, size: 30), // Icon Notes
              label: "Notes",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check, color: Colors.white, size: 30), // Icon To-do
              label: "To-do",
            ),
          ],
          onTap: (index) {
            if (index == 0) {
              // Arahkan ke halaman Notes ketika item Notes di-tap
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeAppScreen()),
              );
            } else if (index == 1) {
              // Arahkan ke halaman To-do ketika item To-do di-tap
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AfterSavingNoteScreen(noteText: "")),
              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0XFF8884FF),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainTextScreen()),
            );
          },
          child: const Icon(Icons.add, size: 30),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Hi, Ibnu",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Good Morning",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            icon:
                Icon(Icons.dashboard, color: Colors.black, size: 26),
            onPressed: () {
              print("Dashboard button pressed");
            },
          ),
        ),
      ],
    );
  }
}
