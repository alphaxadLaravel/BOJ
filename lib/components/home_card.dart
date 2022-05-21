class Homecard {
  final String path;
  final String image;

  Homecard({
    required this.path,
    required this.image,
  });
}

List<Homecard> homecards = [
  Homecard(
    path: "demo path",
    image: 'assets/images/mwampo.png',
  ),
  Homecard(
    path: "demo path",
    image: 'assets/images/jiza.png',
  ),
  Homecard(
    path: "demo title",
    image: 'assets/images/falme.png',
  ),
];
