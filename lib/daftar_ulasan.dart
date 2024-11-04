import 'package:flutter/material.dart';
import 'component/review_card.dart';
import 'component/appbar.dart';

class DaftarUlasan extends StatelessWidget {
  const DaftarUlasan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUMKMku(titleText: 'Daftar Ulasan'),
      body: SingleChildScrollView(
        child: Column(
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
