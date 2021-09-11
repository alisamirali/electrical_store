import 'package:electrical_store/widgets/home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "مرحباً بكم في متجر الإلكترونيات",
          style: GoogleFonts.getFont('Almarai'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "تحت الإنشاء",
                    style: GoogleFonts.getFont('Almarai'),
                  ),
                  backgroundColor: Colors.grey.shade700,
                ),
              );
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
        ],
        centerTitle: false,
      ),
      body: HomeBody(),
    );
  }
}
