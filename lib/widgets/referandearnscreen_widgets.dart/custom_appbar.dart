import 'package:flutter/material.dart';

class ReferEarnCustomAppBar extends StatelessWidget {
  const ReferEarnCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        padding: const EdgeInsets.all(10),
        height: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const ImageIcon(
                    AssetImage("assets/images/tools/Line arrow-left.png"),
                    color: Color(0xFF7D23E0),
                    size: 24,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
