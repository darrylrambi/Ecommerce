import 'package:flutter/material.dart';
import 'component/review_card.dart';
import 'package:google_fonts/google_fonts.dart';

class DaftarUlasan extends StatelessWidget {
  const DaftarUlasan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(76, 175, 80, 1),
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          'Daftar Ulasan',
          style: GoogleFonts.montserrat(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            ReviewCard(username: 'Darryl', rating: 5),
            ReviewCard(username: 'Darryl', rating: 5),
            ReviewCard(username: 'Darryl', rating: 5),
            ReviewCard(username: 'Darryl', rating: 5),
            ReviewCard(username: 'Darryl', rating: 5),
          ],
        ),
      )
    );
  }
}
