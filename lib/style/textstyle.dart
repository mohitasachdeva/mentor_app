

import 'package:flutter/material.dart';


class TextStyles {
  static const TextStyle bold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const TextStyle italic = TextStyle(
    fontStyle: FontStyle.italic,
    fontSize: 16,
  );

  static const TextStyle underline = TextStyle(
    decoration: TextDecoration.underline,
    fontSize: 16,
  );
  static const TextStyle primaryBold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: const Color.fromARGB(222, 1, 0, 0),
  );
  static const TextStyle Button = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Color.fromARGB(224, 5, 89, 157),
  );

  static const TextStyle large = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle larges = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle small = TextStyle(fontSize: 12);

  static const TextStyle primary = TextStyle(
    color: Color.fromARGB(255, 25, 94, 151),
    fontSize: 16,
  );

  static const TextStyle danger = TextStyle(color: Colors.red, fontSize: 16);
  static const TextStyle keys = TextStyle(
    color: Colors.grey,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle values = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle subText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: Colors.black87,
    height: 1.4,
  );
  static const TextStyle welcomeText = TextStyle(
    fontFamily: 'roboto',
    fontSize: 26,
    fontWeight: FontWeight.w500,
    color: Color.fromARGB(255, 8, 0, 0),
  );

  static const appBarTitle = TextStyle(
    color: AppColors.cardColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const greetingText = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.secondaryTextColor, // Example: your 0xFF0072BC
  );

  static const bodyText = TextStyle(fontSize: 16, color: AppColors.textColor);

  //Dashboard Text Styles
  static const TextStyle dashboardsectiontitle = TextStyle(
    color: AppColors.attendance_history_card,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  //All Coding Practice Card styles
  static const TextStyle cardGrey = TextStyle(
    color: AppColors.textSecondaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle cardblack = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle attandanceStyle = TextStyle(
    color: AppColors.cardColor,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle attendanceSubTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.attendance_history_card,
  );

  static const TextStyle dialogTitleStyle = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  // Dialog Box Text Styles
  static const TextStyle dialogboxkeys = TextStyle(
    color: Colors.grey,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle dialogboxvalues = TextStyle(
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle dialogboxeloutlinebuttonText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle dialogboxelevatedbuttonText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryTextColor,
  );

  static const TextStyle submitdialogbox = TextStyle(
    color: AppColors.textColor,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle attendanceCardTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.attendance_history_card,
  );
  static const TextStyle attrightside = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Color.fromARGB(255, 16, 136, 234),
  );

 
  static const TextStyle todaysActivityCardKey = TextStyle(
    color: AppColors.textSecondaryColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle todaysActivityCardValue = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle buttonTextStyle = TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontSize: 16,
          fontFamily: AppFonts.secondaryFont,
        );
        static const TextStyle attandaceCardText = TextStyle(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w500,
          fontSize: 18,
          fontFamily: AppFonts.secondaryFont,
        );
        
  static const TextStyle labCard =  TextStyle(
              fontSize: 16.5,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            );
  static TextStyle labCardTxt = TextStyle(  
                          color: Colors.grey.shade600,
                          fontSize: 13,
                          fontWeight: FontWeight.w400
                        );
  static const TextStyle labCardTxt2 =  TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          );
                          
  static const TextStyle labCardTxt3 = TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        );

  static const TextStyle labCardTitle = TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
                        



  static const heading = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  static const label = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  static const value = TextStyle(
    fontSize: 14,
  );

  static const button = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
}


class AppFonts {
  static const String primaryFont = 'Roboto';
  static const String secondaryFont = 'inter';
  
  // Add other custom font families here
}


class AppColors {
  static const primary = Color(0xFF6200EE);
  static const accent = Color(0xFF03DAC5);
  static const background = Color(0xFF1768B3);
  static const textPrimary = Color.fromARGB(255, 0, 0, 0);
  static const textSecondary = Color(0xFF757575);
  static const containerBackground = Colors.white;
  static const cardColor = Color(0xFFFFFFFF);
  static const cardborder = Color(0xFFF2F2F2);
  static const backGroundQrCode = Color.fromARGB(238, 237, 15, 15);
  static const Color sbackground = Color(0xFFDCE2F2);
  static const Color appBar =  Color(0xFF0072BC);
  static const Color borderColor = Color(0xFFBDBBBB);
  static const Color qrBackground = Color(0xFF168AE9);
  static const Color border = Color.fromARGB(
                          255,
                          178,
                          204,
                          231,
                        );
                       
   static const Color rightSideAttandance =                      Color.fromARGB(
                                      255,
                                      224,
                                      235,
                                      243,
                                    );
    static const textColor= Color(0XFF000000);
   static const scaffoldbackgroundcolor= Color(0xFFF3F5FF);
     
    static const primaryTextColor = Color(0xFFFFFFFF);
    static const backgroundColor = Color(0xF3F5FFFF);
   
    static const secondaryTextColor = Color(0XFF0B336E);

  static const Color primaryColor = Color(0xFF2196F3); // Blue from Figma
  static const Color secondaryColor = Color(0xFF03A9F4);
  static const Color accentColor = Color(0xFF00BCD4);
  static const Color errorColor = Color(0xFFE57373);
  static const Color successColor = Color(0xFF81C784);
  static const Color textSecondaryColor = Color(0xFF757575);
  static const Color inputBorderColor = Color(0xFFE0E0E0);
  static const Color inputBackgroundColor = Color(0xFFF5F5F5);
  static const Color attendance_history_card= Color(0XFF2B2E36);
 


 

  static const Color cardBorder = Color(0xFFD3DCE4); //Today's Activity Card Border
  static const Color textUnderUserName = Color(0XFF0072BC); //Dashboard Text Under User Name
}



class AppPaddings {
  static const EdgeInsets screenPadding = EdgeInsets.all(16.0);
  static const EdgeInsets containerPadding = EdgeInsets.all(24.0);
  static const EdgeInsets qrIconPadding = EdgeInsets.all(16.0);

  static const double containerMarginBottom = 100;
  static const EdgeInsets todayPracticeDay1 = EdgeInsets.symmetric(
    horizontal: 10,
    vertical: 3,
  );

  static const EdgeInsets wlcomePadding = EdgeInsets.all(8.0);
  static const EdgeInsets lab_cart = EdgeInsets.symmetric(
    vertical: 12,
    horizontal: 16,
  );
 


  static const card = EdgeInsets.all(24.0);
  static const sectionSpacing = SizedBox(height: 12);
  static const headerSpacing = SizedBox(height: 20);
  static const buttonSpacing = SizedBox(height: 20);

  
  static const vertical16 = SizedBox(height: 16);
  static const vertical24 = SizedBox(height: 24);
  static const horizontal8 = SizedBox(width: 8);
  static const p1 = EdgeInsets.symmetric(vertical: 12, horizontal: 16);
  static const EdgeInsets attandanpadding = EdgeInsets.symmetric(
    horizontal: 8.0,
    vertical: 4.0,
  );
  static const EdgeInsets rightsideattandance = EdgeInsets.symmetric(
    horizontal: 6,
    vertical: 6,
  );
  // All Coding Practice Card Style
  static const EdgeInsets allCodingPracticeCardPadding = EdgeInsets.fromLTRB(
    10,
    1,
    10,
    10,
  );

  static const BorderRadius allCodingPracticeCardBorderRadius =
      BorderRadius.all(Radius.circular(10));

  static const EdgeInsets buttonPadding = EdgeInsets.fromLTRB(40, 5, 40, 5);
  static const double profileSectionPadding = 24.0;
}

