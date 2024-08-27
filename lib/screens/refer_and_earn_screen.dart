import 'package:flutter/material.dart';
import 'package:ostello/widgets/referandearnscreen_widgets.dart/custom_appbar.dart';
import 'package:ostello/widgets/referandearnscreen_widgets.dart/refer_button.dart';
import 'package:ostello/widgets/referandearnscreen_widgets.dart/referearn_container.dart';
import 'package:ostello/widgets/referandearnscreen_widgets.dart/steps_container.dart';

class ReferAndEarnScreen extends StatelessWidget {
  const ReferAndEarnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(mq.height * 0.05),
          child: const ReferEarnCustomAppBar()),
      body: Container(
        padding: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        child: const Column(
          children: [
            ReferearnContainer(),
            SizedBox(
              height: 15,
            ),
            StepsToEarnContainer(),
            Spacer(),
            ReferButton()
          ],
        ),
      ),
    );
  }
}
