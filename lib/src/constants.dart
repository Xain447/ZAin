


import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/views/aboutView/about_view.dart';
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
  'CONTACT',
];



const List<IconData> drawerIcons = [
  Icons.home,
  Icons.person,
  Icons.work,
  Icons.home_repair_service,
  Icons.build,
  Icons.contact_page,
];


// social Icons
const List<String> socialIconURL = [
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
];

// social links
const List<String> socialLinks = [
  "https://www.facebook.com/profile.php?id=100014063048553",
  "https://www.instagram.com/kzain446/",
  "https://www.linkedin.com/in/zain-ullah-0b1733150/",
  "https://github.com/Xain447"
];


// my resume
const String myResume = 'https://flowcv.com/resume/dc5j975t6m';


// views
const List<Widget> views = [
  HomeView(),
  AboutView(),
  ExperienceView(),
  ServicesView(),
  PortfolioView(),
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
  "Rapid\nPrototyping",
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
  "https://github.com/Xain446/adeejMarketing",
  "https://github.com/Xain447/fyp-Home-Services-",
  "https://github.com/Xain447/fruit_dukan",
  "https://play.google.com/store/apps/details?id=com.kzainapps.jamaicaoutingz",
  "https://play.google.com/store/apps/details?id=com.kzainapps.perfectholyquran",
  "https://play.google.com/store/apps/details?id=ita.plf.app",
  "https://play.google.com/store/apps/details?id=com.kzainapps.ritzy",
  "https://github.com/Xain447/whips-Car-Rental-Project-/tree/master",
  "https://play.google.com/store/apps/details?id=com.thewhyapp.app",
  "https://github.com/Xain447/youth2youth",
];

const List<String> description = [
  "A very unique eCommerce app named Adeej Marketing where user can buy or order things from their phone with ease.",
  "A very demanding app which provide services like Electrican, plumber and more from the comfort of the home. This was my FYP.",
  "Fruit Dukann is an online store where user can find and order their daily base need like fruits, vegetables and other stuff in a few clicks.",
  "Jamaica Outingz is a tour guide and tour booking app where user can Book Tours and Excursions in Jamaica.",
  "Application of Holy book of Muslims, Al-Qur'an. Developed using Flutter. Powered with live RestAPI, find qibla directions and view live madina & makkah.",
  "Pakistan Learning Festival is a social movement founded by the renowned educator-thought leader and activist, Baela Raza Jamil CEO of Idara-e-Taleem-o-Aagahi (ITA) and co-founded by the internationally and nationally awarded Ameena Saiyid, who headed a multinational corporation and pioneered ‘literature festivals’ in Pakistan; she is the Founder Director of the Adab Festival Pakistan.",
  "Here you can find the top 10 most expensive products and services in the world. We aim to provide you a single resource to find and percur the most luxurious things on earth.",
  "This is one of my favouurite project in which user can find a car on rent and also can give his own car on rent to others at the same time.",
  "Select specific problems to get answers and discover how to transform them for the better. Gain help and motivation by learning the perspectives of spirituality, psychology and other schools of thought. Access tools to aid in self-care such as: expert opinions, affirmations, reflective exercises and more!.",
  "This app is for the learning purpose where user can get training on any subject or field they want, here the user are of two types Trainer or Trainee."
];