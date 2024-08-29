import 'package:flutter/material.dart';

List<String> images = [
  "assets/images/icons/manage_courses.png",
  "assets/images/icons/category_services.png",
  "assets/images/icons/enrolled_student.png",
  "assets/images/icons/topper_student.png",
  "assets/images/icons/faculty.png",
  "assets/images/icons/refer_earn.png",
  "assets/images/icons/rate_us.png",
  "assets/images/icons/about.png",
  "assets/images/icons/customer_support.png",
  "assets/images/icons/settings.png"
];

List<String> titles = [
  "Manage Courses",
  "Category & Services",
  "Enrolled Students",
  "Topper Student",
  "Faculty",
  "Refer & Earn",
  "Rate Us",
  "About Ostello AI",
  "Help & Support",
  "Manage Account",
];

List<String> subtitles = [
  "Add, Edit & View Courses",
  "Address, Category & more...",
  "Enrolled students in your institute",
  "Add top students in your institute",
  "Add faculty in your institute",
  "Name, E-Mail, phone number & address",
  "How did you like using the app",
  "T&C, Privacy policy etc.",
  "Make grievance regrading an issue",
  "Add email & Logout "
];

List<String> bottomNavLabel = ["Home", "class", "Live", "Leads", "Account"];
List<String> bottomNavIcon = [
  "assets/images/icons/home.png",
  "assets/images/icons/teacher.png",
  "assets/images/icons/radar.png",
  "assets/images/icons/chart.png",
  "assets/images/icons/profile-circle.png"
];
String content1 =
    "Invite your friends to join us and earn up to ₹1000 every day, i.e., 1000 coins/day. Share your unique referral link, and once they sign up and enroll in a course, you'll get rewarded instantly!";

String content3 =
    "Angela is a great teacher and I have taken some other courses of hers. This one seems to be of the same great quality. If you want a simple code-alone.... ";

List<String> content2 = [
  "1. Share your unique referral link with friends.",
  "2. Your friend signs up and enrolls in any course.",
  "3. ₹250 worth 250 coins will be immediately added to your Ostello wallet for each successful referral!",
];

Color white = Colors.white;
Color lightGrey = const Color(0xFFD9D9D9);
Color lightShadePurple = const Color(0xFFFAF5FF);
Color lavendermist = const Color(0xFFE0C3FF);
Color darkGrey1 = const Color(0xFF0C0C0C);
Color darkGrey2 = const Color(0xFF525251);
Color vibrantPurple = const Color(0xFF7D23E0);
Color mediumGrey = const Color(0xFFB5B5B5);
Color lightshadePurple2 = const Color(0xFFF7F1FF);
Color lightGrey1 = const Color(0xFFA2A2A2);
Color lightGrey3 = const Color(0xFFEEEEEE);
Color darkGrey3 = const Color(0xFF757575);
Color lightpurple = const Color(0xFFF8F2FF);


TextStyle avenirLTProHigh(double f, Color c) => TextStyle(
    fontFamily: 'AvenirLTPro',
    fontWeight: FontWeight.w700,
    fontSize: f,
    color: c);

TextStyle avenirNextLTProHigh(double fontSize, Color color) => TextStyle(
      fontFamily: 'AvenirNextLTPro',
      fontWeight: FontWeight.w600,
      fontSize: fontSize,
      color: color,
    );

TextStyle avenirNextLTProMedium(double fontSize, Color color) => TextStyle(
      fontFamily: 'AvenirNextLTPro',
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
      color: color,
    );
