import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hades/screens/question/Q5Page.dart';
import 'package:info_popup/info_popup.dart';
import '../../components/custem_button.dart';
import '../../components/custem_text.dart';
import '../../utils/app_colors.dart';
import '../../utils/utill_function.dart';

class Q4Page extends StatefulWidget {
  final int marks;

  const Q4Page({Key? key, required this.marks}) : super(key: key);

  @override
  State<Q4Page> createState() => _Q4PageState();
}

class _Q4PageState extends State<Q4Page> {
  bool isButtonPressedStress1 = false;
  bool isButtonPressedStress2 = false;
  bool isButtonPressedStress3 = false;

  late int point = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secondaryColor,
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'ᾍδης',
                    style: GoogleFonts.notoSans(
                        color: AppColors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustemText(
                      text: "Stress", 
                      color: AppColors.white,
                      fontWeight: FontWeight.normal,
                      fontsize: 18,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedStress1 = true;
                          isButtonPressedStress2 = false;
                          isButtonPressedStress3 = false;
                          point = point + 31556926;
                        });
                      },
                      text: 'Stress is a positive influence',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedStress1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedStress1 = false;
                          isButtonPressedStress2 = true;
                          isButtonPressedStress3 = false;
                          point = point - 31556926;
                        });
                      },
                      text: 'I have my share of ups and downs',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedStress2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedStress1 = false;
                          isButtonPressedStress2 = false;
                          isButtonPressedStress3 = true;
                          point = point - 157784630;
                        });
                      },
                      text: 'Stress often overwhelms me',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedStress3,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xffFF8585),
                        size: 24,
                      ),
                    ),
                    InfoPopupWidget(
                      contentTitle: 'Life is a high-wire act, and stress is the wobbly wind threatening to throw you off balance. But hold on tight, stress-tamers! Learning to dance with this wild force can transform it from a saboteur to a secret superpower, propelling you to new heights!',
                      contentTheme: InfoPopupContentTheme(contentPadding: const EdgeInsets.all(15),
                        infoContainerBackgroundColor: AppColors.black,
                        infoTextStyle: TextStyle(
                          color: AppColors.white,
                          height: 1.5,
                          fontSize: 10,
                        )
                      ),
                      child: const Icon(
                        Icons.info,
                        color: Color(0xffFF8585),
                        size: 24,
                      ),
                    ),
                    IconButton(
                      onPressed: isButtonPressedStress1 || isButtonPressedStress2 || isButtonPressedStress3
                      ? () {
                          UtillFunction.navigateTo(context, Q5Page(marks: point));
                        }
                      : null,
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xffFF8585),
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ],
            )
          )
        )
      )
    );
  }
}