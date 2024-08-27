import 'package:flutter/material.dart';

class AccuntScreenHeading extends StatelessWidget {
  const AccuntScreenHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 64),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Baseline(
            baseline: 32,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              'Account',
              style: TextStyle(
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w800,
                  fontSize: 32,
                  color: Color(0xFF0C0C0C)),
            ),
          ),
          const SizedBox(width: 5),
          const Baseline(
            baseline: 28,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              '(#TGH0001)',
              style: TextStyle(
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xFF525251)),
            ),
          ),
          const SizedBox(width: 5),
          Baseline(
            baseline: 28,
            baselineType: TextBaseline.ideographic,
            child: SizedBox(
                height: 18,
                width: 18,
                child: Image.asset("assets/images/tools/copy.png")),
          )
        ],
      ),
    );
  }
}
