


import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/views/aboutView/about_view.dart';
import 'package:my_portfolio/presentation/views/certificateView/certificate_view.dart';
import 'package:my_portfolio/presentation/views/contactView/contact_view.dart';
import 'package:my_portfolio/presentation/views/educationView/education_view.dart';
import 'package:my_portfolio/presentation/views/experienceView/experience_view.dart';
import 'package:my_portfolio/presentation/views/homeView/home_view.dart';
import 'package:my_portfolio/presentation/views/portfolioView/portfolio_view.dart';
import 'package:my_portfolio/presentation/views/servicesView/services_view.dart';
import 'package:my_portfolio/presentation/widgets/footer.dart';
import 'package:url_launcher/url_launcher.dart';


// URL Launcher
void openURL(String url) => launchUrl( Uri.parse(url), );

const fontFamily = 'Poppins';

// Tools & Tech
final kTools = [
  "Flutter",
  "Dart",
  "Firebase",
  "Git / GitHub",
  "SQLite DB",
  "MVC / BLOC / GIT"
];

// aboutMe
const String aboutMeHeadline = 'Hi, I am Zain Ullah a Flutter Mobile & Web App developer.';
const String aboutMeDetail = 'I am a Mid-level Software Developer with a BS in Computer Science from University Of Swabi,'
    'Passionate about Mobile Programming and problem-solving with good experience in flutter mobile app development.'
    'I have been developing mobile apps for over 2 years now and worked in teams for various companies and helped them'
    'in launching their products or customer projects and got valuable learning experience. With a proven track '
    'record of working proactively in busy office environments, I am an excellent team player who is well-organized and'
    'able to collaborate effectively with others Currently working as a Senior Mobile App Developer at AutoCoinCars.com';


// contact
const List<IconData> contactIcon = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

const List<String> titles = [
  "Location",
  "Phone",
  "Email",
];

const List<String> details = [
  "Swabi, KPK, Pakistan",
  "(+92) 313 9844838",
  "akzain4467@gmail.com",
];

// navbar
const List<String> navbarNames = [
  'HOME',
  'ABOUT',
  'EXPERIENCE',
  'SERVICES',
  'EDUCATION',
  'PROJECTS',
  'CERTIFICATIONS',
  'CONTACT',
];

const List<IconData> navbarIcons = [
  Icons.home,
  Icons.person,
  Icons.work,
  Icons.home_repair_service,
  Icons.school,
  Icons.build,
  Icons.settings,
  Icons.contact_page,
];


// social Icons
const List<String> socialIconURL = [
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/android/480/ffffff/twitter.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
];

// social links
const List<String> socialLinks = [
  "https://facebook.com/mhmzdev",
  "https://instagram.com/mhmzdev",
  "https://twitter.com/mhmzdev",
  "https://linkedin.com/in/mhmzdev",
  "https://github.com/mhmzdev",
  "https://mhmzdev.medium.com"
];


// my resume
const String myResume = 'https://drive.google.com/file/d/1bDNNrkQtNVJbXcdwMSx0crQQvAF_nMwV/view?usp=sharing';


// views
const List<Widget> views = [
  HomeView(),
  AboutView(),
  ExperienceView(),
  ServicesView(),
  EducationView(),
  PortfolioView(),
  CertificateView(),
  ContactView(),
  Footer(),
];

