import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hades/screens/question/Q10Page.dart';
import 'package:info_popup/info_popup.dart';
import '../../components/custem_button.dart';
import '../../components/custem_text.dart';
import '../../utils/app_colors.dart';
import '../../utils/utill_function.dart';

class Q9Page extends StatefulWidget {
  const Q9Page({Key? key}) : super(key: key);

  @override
  State<Q9Page> createState() => _Q9PageState();
}

class _Q9PageState extends State<Q9Page> {
  bool isContainerVisible = false;

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
                      text: "Doctor Visits", 
                      color: AppColors.white,
                      fontWeight: FontWeight.normal,
                      fontsize: 18,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {

                      },
                      text: 'Once a year or less',
                      width: MediaQuery.of(context).size.width,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {

                      },
                      text: 'Several times a year',
                      width: MediaQuery.of(context).size.width,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      onTap: () async {

                      },
                      text: 'Once a month or more',
                      width: MediaQuery.of(context).size.width,
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
                      onPressed: () {
                        UtillFunction.navigateTo(context, const Q10Page());
                      },
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