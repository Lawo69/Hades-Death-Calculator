import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hades/screens/question/Q8Page.dart';
import 'package:info_popup/info_popup.dart';
import '../../components/custem_button.dart';
import '../../components/custem_text.dart';
import '../../utils/app_colors.dart';
import '../../utils/utill_function.dart';

class Q7Page extends StatefulWidget {
  final int marks;

  const Q7Page({Key? key, required this.marks}) : super(key: key);

  @override
  State<Q7Page> createState() => _Q7PageState();
}

class _Q7PageState extends State<Q7Page> {
  bool isButtonPressedAlcohol1 = false;
  bool isButtonPressedAlcohol2 = false;
  bool isButtonPressedAlcohol3 = false;

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
                      text: "Drinking Alcohol", 
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
                          isButtonPressedAlcohol1 = true;
                          isButtonPressedAlcohol2 = false;
                          isButtonPressedAlcohol3 = false;
                          point = point + 31556926;
                        });
                      },
                      text: 'Never drink',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedAlcohol1
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedAlcohol1 = false;
                          isButtonPressedAlcohol2 = true;
                          isButtonPressedAlcohol3 = false;
                          point = point - 94670778;
                        });
                      },
                      text: '2 times a week',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedAlcohol2
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {
                        setState(() {
                          point = widget.marks;
                          isButtonPressedAlcohol1 = false;
                          isButtonPressedAlcohol2 = false;
                          isButtonPressedAlcohol3 = true;
                          point = point - 189341556;
                        });
                      },
                      text: 'Daily drinking',
                      width: MediaQuery.of(context).size.width,
                      isButtonPressed: isButtonPressedAlcohol3
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
                      contentTitle: 'Sipping smart beats sloppy seconds! Moderate like a champion: 2 for the guys, 1 for the gals. Too much booze? You\'re flirting with crashes, cancers, and a grumpy liver. Watch your pours, ditch the drunk drives, and cheers to responsible revelry!',
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
                      onPressed: isButtonPressedAlcohol1 || isButtonPressedAlcohol2 || isButtonPressedAlcohol3
                    ? () {
                        UtillFunction.navigateTo(context, Q8Page(marks: point));
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