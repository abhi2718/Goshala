import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorTile extends StatelessWidget {
  const DoctorTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        leading: const CircleAvatar(
          radius: 22,
          backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/5452293/pexels-photo-5452293.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        ),
        title: Text("Dr. Arun Grover"),
        subtitle: Text("Cow Specialist"),
        titleTextStyle:
            GoogleFonts.inter(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
        subtitleTextStyle:
            GoogleFonts.inter(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
      ),
    );
  }
}
