


import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/views/aboutView/about_view.dart';
import 'package:my_portfolio/presentation/views/certificateView/certificate_view.dart';
import 'package:my_portfolio/presentation/views/contactView/contact_view.dart';
import 'package:my_portfolio/presentation/views/experienceView/experience_view.dart';
import 'package:my_portfolio/presentation/views/homeView/home_view.dart';
import 'package:my_portfolio/presentation/views/portfolioView/portfolio_view.dart';
import 'package:my_portfolio/presentation/views/servicesView/services_view.dart';
import 'package:my_portfolio/presentation/widgets/footer.dart';
import 'package:my_portfolio/src/utils/assets_manager.dart';
import 'package:url_launcher/url_launcher.dart';


// URL Launcher
void openURL(String url) => launchUrl( Uri.parse(url), );

const fontFamily = 'Poppins';

// Tools & Tech
final List<String> kTools = [
  "Flutter",
  "Dart",
  "Firebase",
  "Git / GitHub",
  "SQLite DB",
  "Restful APIs ",
  "Google Maps ",
  "MVC / BLOC / GIT",
  "Payment Gateways",
  "Clean Architecture",
  "Flutter Web",
];

// education
final List<Map<String,dynamic>> education = [
  {
    "school": "University of Swabi",
    "date": "Sep 2016 – Nov 2020",
    "location": "Anbar Swabi, Pakistan",
    "degree": "BS Computer Science"
  },
  {
    "school": "Nisar Shaheed Degree College",
    "date": "Aug 2013 – May 2015",
    "location": "Risalpur Cantt, Pakistan",
    "degree": "FSC Pre-Engineering"
  },
  {
    "school": "Fauji Foundation Model School",
    "date": "Apr 2013",
    "location": "Swabi, Pakistan",
    "degree": "Matric Science"
  },
];

// aboutMe
const String aboutMeHeadline = 'Hi, I am Zain Ullah a Flutter Mobile & Web App developer.';
const String aboutMeDetail = 'I am a Mid-level Software Developer with a BS in Computer Science from University Of Swabi,'
    ' Passionate about Mobile Programming and problem-solving with good experience in flutter mobile app development.'
    ' I have been developing mobile apps for over 2 years now and worked in teams for various companies and helped them'
    ' in launching their products or customer projects and got valuable learning experience. With a proven track '
    ' record of working proactively in busy office environments, I am an excellent team player who is well-organized and'
    ' able to collaborate effectively with others. Currently working as a Senior Mobile App Developer using Flutter & Dart at AutoCoinCars.com';


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
  'PROJECTS',
  'CERTIFICATIONS',
  'CONTACT',
];



const List<IconData> drawerIcons = [
  Icons.home,
  Icons.person,
  Icons.work,
  Icons.home_repair_service,
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
  PortfolioView(),
  CertificateView(),
  ContactView(),
  Footer(),
];

// services
const List<String> servicesIcons = [
  AssetsManager.androidLogo,
  AssetsManager.iosLogo,
  AssetsManager.webLogo,
  AssetsManager.rapidLogo,
];

const List<String> servicesTitles = [
  "Android App Development",
  "iOS App Development",
  "Web App Development",
  "Rapid Prototyping",
];

const List<String> servicesDescription = [
  "Android app development using Flutter & Dart\n",
  "IOS app development using Flutter & Dart\n",
  "Web app development using Flutter & Dart\n",
  "Rapid Prototype via Flutter\n- Working MVP\n- Quick & Working prototype",
];


// projects

// banners
const List<String> banners = [
  AssetsManager.adeej,
  AssetsManager.ease,
  AssetsManager.fruit,
  AssetsManager.jamaica,
  AssetsManager.perfect,
  AssetsManager.plf,
  AssetsManager.ritzy,
  AssetsManager.whips,
  AssetsManager.whyApp,
  AssetsManager.y2y,
];


// icons
const List<String> icons = [
  AssetsManager.adeejIcon,
  AssetsManager.easeIcon,
  AssetsManager.fruitIcon,
  AssetsManager.jamaicaIcon,
  AssetsManager.perfectIcon,
  AssetsManager.plfIcon,
  AssetsManager.ritzyIcon,
  AssetsManager.whipsIcon,
  AssetsManager.whyAppIcon,
  AssetsManager.y2yIcon,
];

// titles
List<String> projectTitle = [
  "Adeej Marketing",
  "Service Ease",
  "Fruit Dukan",
  "Jamaica Outingz",
  "Perfect Holy Qur'an",
  "Pakistan Learning Festival",
  "Ritzy App",
  "Whips Car Rental",
  "The Why App",
  "Youth 2 Youth Training",
];

// links
List<String> links = [
  "https://pub.dev/packages/awesome_snackbar_content",
  "https://github.com/mhmzdev/The_Holy_Quran_App",
  "https://github.com/mhmzdev/MedKit-Pharmacy-App-Using-Flutter",
  "https://github.com/mhmzdev/Here-I-Am-Alert-App",
  "https://github.com/mhmzdev/Covid19-Tracker-App",
  "https://github.com/mhmzdev/Messenger-Chat-Head-Flutter-UI",
  "https://github.com/mhmzdev/flutter.dev-Flutter-Web-Clone",
  "https://github.com/mhmzdev/Earbender_Music_App",
  "https://github.com/mhmzdev/FTP_GUI_Java",
  "https://github.com/mhmzdev/My-Order-Resturant-Ordering-System",
];

const List<String> description = [
  "A very unique dart package to uplift the snackbar experience in flutter. Available at pub.dev now!",
  "Application of Holy book of Muslims, Al-Qur'an. Developed using Flutter. Powered with live RestAPI given in README.md",
  "A Phramacy app developed using Flutter powered with Firebase as database with Doctor and Patient panels.",
  "Here I am is an Alert app that Sends alert SMS holding your location (Address and Google Maps) to your loved ones.",
  "A live trakcer for COVID19 stats across the Globe and my Home country Pakistan. It uses APIs so the data is live.",
  "Tried to clone the famous Chat Heads by Facebook Messenger using Flutter. Its basically in-app not exactly like the original chat head.",
  "Flutter Official Site clone using Flutter Web. Try the live site here. For the time being its not responsive fully so there might be responsiveness issues.",
  "A simple GUI based Java application that sends file from Client to Server but not the other way around.",
  "A concept app for self-services at various restaurants now a days. More like a Restaurant Ordering System.",
  "Its my end semester project. The whole design I developed here is an inspiration from my favortie Flutter Developer Marcin Szałek and his blog Fidev."
];