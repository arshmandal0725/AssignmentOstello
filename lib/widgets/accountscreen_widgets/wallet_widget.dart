import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: const Color(0xFFDDBEFF))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFFFAF6FF)),
            child: Center(
              child: SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  "assets/images/icons/wallet-3.png",
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Wallet",
                style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                    color: Color(0xFF525251)),
              ),
              Text(
                "8000 Balance",
                style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF525251)),
              )
            ],
          ),
          const Spacer(),
          SizedBox(
            height: 16,
            width: 16,
            child: Image.asset("assets/images/tools/arrow-right.png"),
          )
        ],
      ),
    );
  }
}
