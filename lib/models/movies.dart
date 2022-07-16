import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Movie {
  final int id;
  final List<String> genra;
  final String plot, title, poster;
  final List<Actor> cast;

  Movie({
    required this.poster,
    required this.title,
    required this.id,
    required this.genra,
    required this.plot,
    required this.cast,
  });
}

class Actor {
  late final String name, realname, image;
  Actor({
    required this.name,
    required this.realname,
    required this.image,
  });
}

// our demo data movie data
List<Movie> movies = [
  Movie(
    poster: "assets/posters/my_name.jpg",
    title: "My Name ",
    id: 1,
    genra: ['Action', 'drama'],
    plot: plot01,
    cast: [
      Actor(
          name: 'Youn Jee Woo',
          realname: 'Han So Yee',
          image: 'assets/images/casts/HanSoHee.jpg'),
      Actor(
          name: 'Choi Moo Jin',
          realname: 'Park Hee Soon',
          image: 'assets/images/casts/ParkHeeSoon.jpg'),
      Actor(
          name: 'Jeon Pil Do',
          realname: 'Ahn Bo Hyun',
          image: 'assets/images/casts/AhnBoHyun.jpg'),
    ],
  ),
  Movie(
    poster: "assets/posters/suspicious.jpg",
    title: "Suspicious Partner",
    id: 2,
    genra: ['Comedy', 'Law', 'Romance'],
    plot: plot02,
    cast: [
      Actor(
          name: 'Noh Ji Wook',
          realname: 'Ji Chan Wook',
          image: 'assets/images/casts/JiChangWook.jpg'),
      Actor(
          name: 'Eun Bong Hee',
          realname: 'Nam Ji Hyun',
          image: 'assets/images/casts/NamJiHyun.jpg'),
      Actor(
          name: 'Cha Yoo Jung',
          realname: 'Kwon Na Ra',
          image: 'assets/images/casts/KwonNaRa.jpg'),
    ],
  ),
  Movie(
    poster: "assets/posters/weightlifting.jpg",
    title: "Weightlifting Fairy Kim Bok Joo ",
    id: 3,
    genra: ['Comedy', 'Sports', 'Romance'],
    plot: plot03,
    cast: [
      Actor(
          name: 'Kim Bok Joo',
          realname: 'Lee Sung Kyung',
          image: 'assets/images/casts/LeeSungKyung.jpg'),
      Actor(
          name: 'Jung Joon Hyung',
          realname: 'Nam Joo Hyuk',
          image: 'assets/images/casts/NamJooHyuk.jpg'),
      Actor(
          name: 'Jung Jae Yi',
          realname: 'Lee Jae Yoon',
          image: 'assets/images/casts/LeeJaeYoon.jpg'),
    ],
  ),
  Movie(
    poster: "assets/posters/moonshine.jpg",
    title: "Moonshine ",
    id: 4,
    genra: ['Comedy', 'History', 'Romance'],
    plot: plot04,
    cast: [
      Actor(
          name: 'Nam Young',
          realname: 'Yoo Seug Ho',
          image: 'assets/images/casts/YooSeugHo.jpg'),
      Actor(
          name: 'Kang Ro Seo',
          realname: 'Lee Hye Ri',
          image: 'assets/images/casts/LeeHyeRi.jpg'),
      Actor(
          name: 'Lee Pyo',
          realname: 'Byeon Woo Seok',
          image: 'assets/images/casts/ByeonWooSeok.jpg'),
    ],
  ),
];
List categories = [
  {
    'text': 'Romance',
    'icon': IconlyBold.heart,
  },
  {
    'text': 'Sports',
    'icon': Icons.sports,
  },
  {
    'text': 'Games',
    'icon': IconlyBold.game,
  },
  {
    'text': 'School',
    'icon': IconlyBold.work,
  }
];

String plot01 =
    " Following her father's murder, a revenge-driven woman puts her trust in a powerful crime boss — and enters the police force under his direction.Yoon Ji Woo, a member of the organized crime ring, goes undercover as a police officer and harbors cold revenge in her heart. Helping Yoon Ji Woo go undercover is Choi Moo Jin, the boss of, the biggest drug ring in Korea, whose true motives are not easy to read. Jeon Pil Do, a police detective in the Drug Investigation Unit. He is a stickler for rules who becomes Yoon Ji Woo’s partner when she joins the police. Cha Gi Ho, the team leader of the Drug Investigation Unit. He and Choi Moo Jin have long been enemies, with Cha Gi Ho vowing to take down his crime ring before he retires. Jung Tae Joo, Choi Moo Jin’s subordinate in the drug ring. Because of his steadfast loyalty, he is Choi Moo Jin’s most trusted henchman. Do Gang Jae, a former member of the drug ring. After causing problems and getting kicked out of the gang, he vowed revenge against them.";
String plot02 =
    "Noh Ji Wook is a brainiac prosecutor and Eun Bong Hee is a rookie justice department intern, who always seems to find herself in the most unfortunate and embarrassing situations. Bong Hee is falsely accused of murdering her ex-boyfriend, and Ji Wook gets demoted because he risks his career and reputation to save Bong Hee. Things get complicated as their careers, and love lives get entangled, but one thing brings them together- catching the real culprit responsible for a series of murders before they run out of time and get themselves killed. Ji Eun Hyuk used to be a good friend of Ji Wook, and their friendship used to be the strongest ever. During Eun Hyuk's troubled childhood, Ji Wook used to feel like his only family.";
String plot03 =
    "Bok Joo is a weightlifter who is pursuing her dream of winning the gold medal but she then finds romance for the first time in her life. While she is a woman who trains with heavy steel weights, she is also very feminine when it comes to relationships. Focusing solely on weightlifting would jeopardize her relationship but leaving her weightlifting career for love would keep her from attaining her dreams. Can she find a way to have love as well as glory at the age of 20? The characters within this drama are elite athletes in weightlifting, swimming and rhythmic gymnastics who work hard to reach their goals in life. It covers their coming-of-age stories and relationships through hectic life.";
String plot04 =
    "An extended period of prohibition in the Joseon era  proved that the restriction of alcohol was no match for human desire. Laws against imbibing, buying or making alcohol created different challenges for these inhabitants:Inspector Nam Young from The Office of the Inspector-General who left his hometown to achieve fame in Hanyang and restore his family status; Kang Ro Seo, the aristocratic but impoverished  lady who makes moonshine to reduce her debt, allowing her to continue buying her mother’s medication and her brother’s books; and even Crown Prince Lee Pyo, who was prone to scaling the palace walls in search of a tipple. This trio has a fateful encounter leading to the discovery of a hidden stash of alcohol. Revealing this secret would only result in a certain death. ";
