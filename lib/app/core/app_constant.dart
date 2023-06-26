import 'package:flutter/material.dart';
import 'package:mysite/app/core/widgets/footer.dart';
import 'package:mysite/app/dashboard/contact/contact.dart';
import 'package:mysite/app/dashboard/home/home.dart';
import 'package:mysite/app/dashboard/portfolio/portfolio.dart';
import 'package:mysite/app/dashboard/services/services.dart';
import 'package:mysite/app/models/contact_model.dart';
import 'package:mysite/app/models/project_model.dart';
import 'package:mysite/app/models/service_model.dart';
import 'package:url_launcher/url_launcher.dart';

mixin AppConstant {
  static void openURL(String url) => launchUrl(
        Uri.parse(url),
      );

  static const primaryColor = Color.fromARGB(255, 84, 178, 236);
  static const secondaryColor = Color.fromARGB(255, 255, 60, 0);

  static const textColor = Color(0xFF2B2B2B);
  static const lightgrayColor = Color(0x44948282);
  static const whiteColor = Color(0xFFFFFFFF);
  static const blackColor = Color(0xFF2B2B2B);
  static Color lightBackgroundColor = const Color(0xFFFFFFFF);
  static Color lightTextColor = const Color(0xFF403930);
  static Color darkBackgroundColor = const Color(0xFF2B2B2B);
  static Color darkTextColor = const Color(0xFFF3F2FF);
  static const pinkpurple = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color.fromARGB(255, 157, 88, 248),
      Color.fromARGB(255, 47, 0, 255),
    ],
  );

  static const grayBack = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0XFF2E2D36),
      Color(0XFF11101D),
    ],
  );
  static const grayWhite = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFFFFFFF),
      Color(0xFFF3F2FF),
    ],
  );

  static const buttonGradi = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0XFF7DE7EB),
      Color(0XFF33BBCF),
    ],
  );

  static const contactGradi = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0XFF2E2D36),
      Color(0XFF11101D),
    ],
  );

  static BoxShadow primaryColorShadow = BoxShadow(
    color: primaryColor.withAlpha(100),
    blurRadius: 12.0,
    offset: const Offset(0.0, 0.0),
  );
  static BoxShadow blackColorShadow = BoxShadow(
    color: Colors.black.withAlpha(100),
    blurRadius: 12.0,
    offset: const Offset(0.0, 0.0),
  );
}

mixin SocialMediaLinks {
  static const String resume =
      'https://drive.google.com/file/d/1OT66R3Wkoq0uYnaVcCeiUb3DcMpV6b6Q/view?usp=sharing';

  static const String gitHub = 'https://github.com/ashu0806';
  static const String facebook = 'https://www.facebook.com/ashwini.gupta.3979';
  static const String twitter = 'https://twitter.com/Ashwini0806';
  static const String linkedin = 'https://www.linkedin.com/in/ashu0806/';
  static const String instagram = 'https://www.instagram.com/_ashu_1807/';

  static const String profileImage =
      "https://images.unsplash.com/photo-1503443207922-dff7d543fd0e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80";
  static const String fiverr = 'https://www.fiverr.com/ashu_0806';
  static const String upwork =
      'https://www.upwork.com/freelancers/~01696f800656e3d58e';
  static const String whatsapp =
      'https://api.whatsapp.com/send?phone=6388882089';
}

mixin AppContent {
  static const String hellotag = '''Hi there, Welcome to my intro ''';
  static const String yourname = "I'm Ashwini Gupta,";
  static const String animationtxt1 = " Application Developer";
  static const String animationtxt2 = "Web Developer";
  static const String contactHeadding = "Let’s try my service now!";
  static const String contactSubHeadding =
      "Let’s work together and make everything super beneficial and super useful.";
  static const String miniDescription =
      "Freelancer and a full-time service provider for programming and design content needs. Join me down below and let's get started!";
  static const String servicesSubHeading =
      "Since the beginning of my journey as a freelance and full-time developer, I've worked in startups (currently working) and collaborated with talented people to create digital products for both business and consumer use. I offer a wide range of services, including brand design, programming and software building.";
  static const String protfolioSubHeading =
      "Since the beginning of my journey as a designer and developer, I have created digital products for business and consumer use. This is a little bit.";
  static const String aboutMeHeadline =
      'I\'m Ashwini Kumar Gupta, a Mobile App developer and Web developer.';
  static const String aboutMeDetail =
      'I\'m a Fresh Graduate as Software Engineer from AKTU University, Lucknow , Uttar Pradesh. I have been developing mobile apps for over 2 years now. I have worked in teams for various startups and helped them in launching their prototypes and got valuable learning experience.';
}

double isFontSize(BuildContext context, double val) {
  double width = MediaQuery.of(context).size.width;
  if (width >= 1024) {
    return val;
  } else if (width < 1024 && width >= 600) {
    return val;
  } else {
    return val;
  }
}

class IconUrls {
  static String upworkUrl =
      "https://img.icons8.com/external-tal-revivo-shadow-tal-revivo/48/000000/external-upwork-a-global-freelancing-platform-where-professionals-connect-and-collaborate-remotely-logo-shadow-tal-revivo.png";

  static String whatsappUrl =
      "https://img.icons8.com/color/48/000000/whatsapp--v1.png";

  static String fiverrUrl = "https://img.icons8.com/color/48/000000/fiverr.png";

  static const lightIcon = "https://img.icons8.com/ios/50/000000/sun--v1.png";
  static const darkIcon =
      "https://img.icons8.com/external-glyphons-amoghdesign/64/000000/external-moon-weather-vol-01-glyphons-amoghdesign.png";
}

class StaticImage {
  static const String hi = 'assets/gif/hi.gif';
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';
}

List<ContactModel> contactUtils = [
  ContactModel(
    url: SocialMediaLinks.gitHub,
    icon: "https://img.icons8.com/ios-glyphs/60/000000/github.png",
  ),
  ContactModel(
    url: SocialMediaLinks.fiverr,
    icon: "https://img.icons8.com/ios-filled/50/000000/fiverr.png",
  ),
  ContactModel(
    url: SocialMediaLinks.facebook,
    icon: "https://img.icons8.com/ios-filled/50/000000/facebook-new.png",
  ),
  ContactModel(
    url: SocialMediaLinks.whatsapp,
    icon: "https://img.icons8.com/material-outlined/48/000000/whatsapp.png",
  ),
  ContactModel(
    url: SocialMediaLinks.twitter,
    icon: "https://img.icons8.com/fluency/48/000000/twitter.png",
  ),
  ContactModel(
    url: SocialMediaLinks.linkedin,
    icon: "https://img.icons8.com/ios-filled/50/000000/linkedin.png",
  ),
  ContactModel(
    url: SocialMediaLinks.upwork,
    icon: "https://img.icons8.com/ios-filled/50/000000/upwork.png",
  ),
  ContactModel(
    url: SocialMediaLinks.instagram,
    icon: "https://img.icons8.com/glyph-neue/64/000000/instagram-new.png",
  ),
];
List<ProjectModel> projectUtils = [
  ProjectModel(
    banners: 'assets/imgs/01.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Github Client Applicaton',
    description:
        'A small project which uses Github OAuth and Starred APIs to show all the starred repos of a particular account.',
    links: 'https://github.com/ashu0806/GithubClient',
  ),
  ProjectModel(
    banners: 'assets/imgs/02.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'QuizLearn',
    description:
        'A basic quiz app regarding PCM related questions using firebase for authentication and storage.',
    links: 'https://github.com/ashu0806/QuizLearn',
  ),
  ProjectModel(
    banners: 'assets/imgs/03.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'A movie description app',
    description:
        'This is a just a movie description showing app which I made for UI practice to explore animation and widgets.',
    links: 'https://github.com/ashu0806/Movie_app',
  ),
  ProjectModel(
    banners: 'assets/imgs/04.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Chat App',
    description:
        'A whatsapp clone with firebase as a backend for chat feature.',
    links: 'https://github.com/ashu0806/MessengerChat',
  ),
];

List<ServiceModel> servicesUtils = [
  ServiceModel(
    name: 'Android App Development',
    icon: 'assets/icons/android.svg',
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
    tool: [
      'Flutter',
      'Android (Kotlin or Java)',
    ],
  ),
  ServiceModel(
    name: 'iOS App Development',
    icon: 'assets/icons/apple.svg',
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
    tool: [
      'Flutter',
    ],
  ),
  ServiceModel(
    name: 'Web Development',
    icon: 'assets/icons/website.svg',
    description:
        "Do you have an idea for your next great website? Let's make it a reality.",
    tool: [
      'Flutter',
      'HTML5,CSS,JS',
    ],
  ),
];

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}

class NavBarUtils {
  static const List<String> names = [
    'HOME',
    'SERVICES',
    'WORKS',
    'CONTACT',
  ];

  static const List<IconData> icons = [
    Icons.home,
    Icons.work,
    Icons.build,
    Icons.settings,
    Icons.contact_page,
  ];
}
