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
            // 1. HEADER BIRU
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF004D8C), Color(0xFF0074D9)],
                    ),
                  ),
                  padding: EdgeInsets.only(top: 60, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Selamat malam,", style: TextStyle(color: Colors.white70, fontSize: 14)),
                          Text("iftahul lailyana", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Icon(Icons.headset_mic_outlined, color: Colors.white),
                    ],
                  ),
                ),
                // 2. KOTAK PUTIH 1 (SALDO & TRANSFER JADI SATU)
                Positioned(
                  top: 130,
                  left: 15,
                  right: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
                    ),
                    child: Column(
                      children: [
                        _buildBlueSaldoCard(),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildTopMenu(Icons.send, "Transfer", Colors.blue),
                              _buildTopMenu(Icons.receipt, "BRIVA", Colors.teal),
                              _buildTopMenu(Icons.water_drop, "PDAM", Colors.blueAccent),
                              _buildTopMenu(Icons.phone_android, "Pulsa/Data", Colors.green),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          ],
        ),
        SizedBox(height: 180), //jarak aman
        // 3. KOTAK PUTIH 2 (PROMO WARNA BIRU)
       padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: container(
          padding: EdgeInsets.all(15),
          ecoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xFF00529C), Color(0xFF0074D9)]),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Lengkapi Liburanmu", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white)),
                    Text("Solusi Pinjaman praktis s.d. Rp 50 juta!", style: TextStyle(fontSize: 10, color: Colors.white70)),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios, size: 14, color: Colors.white),
            ],
          ),
        ),
       ) ,
       // 4. KOTAK PUTIH 3 (PENCAIRAN)
       Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.grey, size: 18),
                            SizedBox(width: 8),
                            Text("Cari Fitur", style: TextStyle(color: Colors.grey, fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Row(
                      children: [
                        Icon(Icons.edit_note, color: Colors.blue, size: 20),
                        Text(" Atur Fitur", style: TextStyle(color: Colors.blue, fontSize: 11, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
      )
    )
  }
}