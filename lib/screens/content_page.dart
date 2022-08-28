import 'package:flutter/material.dart';
import 'package:flutter_interview_practice/modal/data_modal.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {

  static List<DataModel> main_users_list = [
    DataModel("Török László", "Kecskemét"),
    DataModel("Horváth Adrienn", "Kecskemét"),
    DataModel("John Doe", "London"),
    DataModel("Jane Doe", "Texas"),
    DataModel("Béna Béla", "kicsit ügyetlen"),
    DataModel("Egy Ember", "Élő személy"),
    DataModel("Kettő Kata", "Ikrek"),
    DataModel("Három Hugó", "Három Haver"),
    DataModel("Négy Nándor", "Kocka"),
    DataModel("Öt Ödön", "Öttömös"),
    DataModel("Hat Helga", "Hey"),
    DataModel("Hét Hedvig", "Bagoly"),
    DataModel("Nyolcadik Utas", "A halál")
  ];

  List<DataModel> display_list = List.from(main_users_list);

  void updateList(String value) {
    setState(() {
      display_list = main_users_list.where((element) => element.user_name!.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: Center(
        child: Container(
          width: 375,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              children: [
                 const SizedBox(
                      height: 46.0,
                      child: ColoredBox(color: Colors.lightGreen,)
                    ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("Back",
                      style: GoogleFonts.inter(
                        color: const Color(0xFF5DB075),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.19
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(76.0, 0, 111.0, 0),
                      child: Text("Content",
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        height: 1.21
                      ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32.0,
                ),
                TextField(
                  onChanged: (value) => updateList(value),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF6F6F6),
                    labelText: "Search",
                    labelStyle: TextStyle(
                      color: Color(0xFFBDBDBD),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Color(0xFFE8E8E8)),
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Color(0xFFE8E8E8)),
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: display_list.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Container(
                          height: 33,
                          width: 375,
                          decoration:  const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 1, color: Color(0xFFE8E8E8)))
                          ),
                          child: Text(
                            display_list[index].user_name!,
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 1.19,
                              color: const Color(0xFF000000)
                            ),)),
                      ),
                    ),)
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}