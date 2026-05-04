import 'package:flutter/material.dart';
import '../widgets/transaksi_item.dart';

class KeuanganPage extends StatelessWidget {
  const KeuanganPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // 🔻 Floating Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF0B8F7D),
        onPressed: () {},
        child: const Icon(Icons.add, size: 32),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // 🔻 Bottom Nav
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.dashboard, color: Colors.grey),
              Icon(Icons.receipt_long, color: Colors.grey),
              SizedBox(width: 40), // ruang buat FAB
              Icon(Icons.bar_chart, color: Colors.grey),
              Icon(Icons.account_balance_wallet, color: Color(0xFF0B8F7D)),
            ],
          ),
        ),
      ),

      // 🔻 Body
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              color: const Color(0xFF0B8F7D),
              child: const Center(
                child: Text(
                  "Keuangan Pribadi",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Card Saldo
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green[700],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Sisa Saldo",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Rp 1.440.000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Transaksi Terakhir",
                style: TextStyle(fontSize: 18),
              ),
            ),

            const SizedBox(height: 10),

            // List Transaksi
            const TransaksiItem(
              icon: Icons.restaurant,
              title: "Makan Siang",
              amount: "- Rp 35.000",
              amountColor: Colors.red,
            ),
            const TransaksiItem(
              icon: Icons.attach_money,
              title: "Gaji Part-time",
              amount: "+ Rp 1.500.000",
              amountColor: Colors.green,
            ),
            const TransaksiItem(
              icon: Icons.local_cafe,
              title: "Beli Kopi",
              amount: "- Rp 25.000",
              amountColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}