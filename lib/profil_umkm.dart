import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'daftar_ulasan.dart';
import 'component/mini_profile_with_rating.dart';

class ProfilUMKM extends StatelessWidget {
  const ProfilUMKM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(76, 175, 80, 1),
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: Text(
            'Profil UMKM',
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              MiniProfile(username: 'Asep Montir', rating: 5),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  initialValue: 'asepkun@ganteng.com',
                  readOnly: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Alamat Email',
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  initialValue: '085xxxxxxxxxx',
                  readOnly: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Nomor Telepon',
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  initialValue: 'Jalan kaki',
                  readOnly: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Alamat',
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  initialValue: 'biasanya sih saya suka jualan bunga',
                  readOnly: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Deskripsi UMKM',
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  initialValue: '4 dari 5',
                  readOnly: true,
                  decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      labelText: 'Ulasan',
                      suffixIcon: IconButton(
                          icon: const Icon(Icons.arrow_forward),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DaftarUlasan()),
                            );
                          })),
                ),
              ),
            ],
          ),
        ));
  }
}
