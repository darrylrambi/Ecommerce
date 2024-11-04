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
            ReviewCard(username: 'Darryl', rating: 5, tanggalUlasan: '12-02-2024', ulasan: 'Bagus bang', imgSource: 'lib/assets_images/Produk1.png',),
            ReviewCard(username: 'Dimas', rating: 1, tanggalUlasan: '12-02-2024', ulasan: 'Makanannya bau amis bang', imgSource: 'lib/assets_images/Makanan1.jpg',),
            ReviewCard(username: 'Dafa', rating: 5, tanggalUlasan: '12-02-2024', ulasan: 'Enak makanannya bang bang', imgSource: 'lib/assets_images/Makanan3.jpg',),
            ReviewCard(username: 'Doni', rating: 5, tanggalUlasan: '12-02-2024', ulasan: 'Tasnya bagus, sesuai gambar', imgSource: 'lib/assets_images/Produk2.png',)
          ],
        ),
      )
    );
  }
}
