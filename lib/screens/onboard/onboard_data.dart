// ignore_for_file: file_names

class OnBoarding {
  final String title;
  final String image;
  final String paragraphs;

  OnBoarding({
    required this.title,
    required this.image,
    required this.paragraphs,
  });
}

List<OnBoarding> boardContents = [
  OnBoarding(
    title: "Matangazo Yetu!",
    paragraphs: "Pata matangazo yote \nKuhusu makongamano ya dini.",
    image: 'assets/images/nots.gif',
  ),
  OnBoarding(
    title: "Muhutasari",
    paragraphs:
        "Pata muhutasari juu ya makongamano \n yaliyofanyika sehemu mbalimbali",
    image: 'assets/images/breaking.gif',
  ),
  OnBoarding(
    title: "Tupo live",
    paragraphs: "Peruzi live makongamano yote \n ya dini popote ulipo",
    image: 'assets/images/live.gif',
  ),
  OnBoarding(
    title: "Mafundisho",
    paragraphs:
        "Pata mafundisho mbalimbali ya dini ya kikristo \n kutoka kwa watumishi mbalimbali",
    image: 'assets/images/holy.gif',
  ),
];
