import 'package:flutter/material.dart';
import 'package:ostello/constant.dart';
import 'package:ostello/widgets/accountscreen_widgets/accountscreen_heading.dart';
import 'package:ostello/widgets/accountscreen_widgets/custom_bottomnavbar.dart';
import 'package:ostello/widgets/accountscreen_widgets/options_card.dart';
import 'package:ostello/widgets/accountscreen_widgets/socialmedia_container.dart';
import 'package:ostello/widgets/accountscreen_widgets/student_institute_card.dart';
import 'package:ostello/widgets/accountscreen_widgets/wallet_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        const AccuntScreenHeading(),
                        const SizedBox(
                          height: 20,
                        ),
                        const StudentInstituteCard(),
                        const SizedBox(
                          height: 30,
                        ),
                        const WalletCard(),
                        const SizedBox(
                          height: 40,
                        ),
                        OptionsCard(
                          title: titles[0],
                          subTitle: subtitles[0],
                          image: images[0],
                          havingLowerBorder: false,
                        ),
                        OptionsCard(
                          title: titles[1],
                          subTitle: subtitles[1],
                          image: images[1],
                          havingLowerBorder: false,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        OptionsCard(
                          title: titles[2],
                          subTitle: subtitles[2],
                          image: images[2],
                          havingLowerBorder: false,
                        ),
                        OptionsCard(
                          title: titles[3],
                          subTitle: subtitles[3],
                          image: images[3],
                          havingLowerBorder: false,
                        ),
                        OptionsCard(
                          title: titles[4],
                          subTitle: subtitles[4],
                          image: images[4],
                          havingLowerBorder: false,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        OptionsCard(
                          title: titles[5],
                          subTitle: subtitles[5],
                          image: images[5],
                          havingLowerBorder: true,
                        ),
                        OptionsCard(
                          title: titles[6],
                          subTitle: subtitles[6],
                          image: images[6],
                          havingLowerBorder: true,
                        ),
                        OptionsCard(
                          title: titles[7],
                          subTitle: subtitles[7],
                          image: images[7],
                          havingLowerBorder: true,
                        ),
                        OptionsCard(
                          title: titles[8],
                          subTitle: subtitles[8],
                          image: images[8],
                          havingLowerBorder: true,
                        ),
                        OptionsCard(
                          title: titles[9],
                          subTitle: subtitles[9],
                          image: images[9],
                          havingLowerBorder: false,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  const SocialmediaContainer()
                ],
              ),
            ),
          ),
          const CustomBottomnavbar(),
        ],
      ),
    );
  }
}
