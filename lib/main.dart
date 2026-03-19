import "package:flutter/material.dart";

void main() {
  runApp(Material(
    home:BrimoFinalReplication(),
    debugShowCheckedModeBanner:
    false,
  ))
}

class BrimoFinalReplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFF4F7FA),

      //--NAVIGATION BAWAH LENGKAP--
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDockedc,
      floatingActionButton:FloatingActionButton(
        onPressed:(){},
        backgroundColor:Color(0xff0074d9),
        shape:CircleBorder(),
        child:Icon(Icon.qr_code_scanner,color:Colos.whitw, size:30),
      ),
      bottomNavigationBar:BottomAppBar(
        Shape: CircularNotchedRectangle(),
        notchMargin:8,
        child: Container(
          height:60,
          child:Row(
            mainAxisAlignment:MainAxisAlignment.SpaceAround,
            children: [
              _buildBottomIcon(Icons.home,"Home", true),
               _buildBottomIcon(Icons.sync_alt,"Mutasi", false),
               SizedBox(widht:40), //Ruang untuk tombol QRIS
               _buildBottomIcon(Icons.notifications_none,"Aktivitas", false),
               _buildBottomIcon(Icons.person_outline,"Akun", false), 
            ]
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: column(
          childern: [
          ]
        )
      )
    )
  }
}