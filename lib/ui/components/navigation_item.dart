import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationItem extends StatelessWidget {
  final String label;
  final IconData icon;

  NavigationItem({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 2),
      child: TextButton(
          onPressed: () {},
          child: Column(
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Text(label,
                    style: GoogleFonts.dmSans(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )
            ],
          )),
    );
  }
}