import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.dogruCevap, this.toplamSoru, {Key? key})
      : super(key: key);

  final int dogruCevap;
  final int toplamSoru;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 132, 175, 244),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Toplam Soru: $toplamSoru'),
            Text('Doğru Cevap: $dogruCevap'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Ana Ekrana Dön'),
            ),
          ],
        ),
      ),
    );
  }
}
