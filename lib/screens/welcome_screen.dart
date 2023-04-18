import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tapp/screens/profile_screen.dart';
import 'package:tapp/screens/splash_screen.dart';
import 'package:tapp/widgets/logo_vokasi.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const LogoVokasi(isColored: true),
          //const SizedBox(height: 114.0),
          const Spacer(),

          // tambah tombol login
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            child: const Text('Login'),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xffee8301),
              minimumSize: const Size(240.0, 40.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              textStyle: GoogleFonts.poppins(fontSize: 14.0),
            ),
          ),
          // tambah tombol Register
          const SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            child: const Text('Register'),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: const Color(0XffeeB361),
              minimumSize: const Size(240.0, 40.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              textStyle: GoogleFonts.poppins(fontSize: 14.0),
              side: BorderSide(color: Color(0xffeeB361)),
            ),
          ),
          const Spacer(),
        ],
      ),
    ));
  }
}
