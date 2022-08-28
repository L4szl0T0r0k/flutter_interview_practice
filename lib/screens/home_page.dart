import 'package:flutter/material.dart';
import 'package:flutter_interview_practice/screens/content_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: Center(
        child: Container(
          width: 375,
          height: 812,
          color: const Color(0xFF5DB075),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 224, 16, 228),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 2.0,
                    blurRadius: 20.0,
                    offset: const Offset(0.0, 2.0)
                  ),
                ]
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(82, 31.74, 80, 0),
                    child: Text("User fetcher",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      height: 1.2)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 15.87, 16, 0),
                    child: Text("Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua esse ex dolore esse. Consequat velit qui adipisicing sunt.",
                    style: GoogleFonts.inter(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      height: 1.21,
                      color: const Color(0xFF666666),
                    ),
                    textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 44.63, 16, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF5DB075),
                        padding: const EdgeInsets.fromLTRB(110, 25, 110, 24.42),
                        shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)
                                )
                      ),
                      child: Text("Fetch users",
                      style: GoogleFonts.inter(
                        fontSize: 16.0,
                        height: 1.19,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ContentPage())
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}