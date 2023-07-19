class Content {
  final String title;
  final String image;
  final String insideContent;

  Content({
    required this.title,
    required this.image,
    required this.insideContent,
  });

  static List<Content> contents = [
    Content(
        title: 'Sedudo',
        image: 'assets/kontenwisata/sedudo.jpeg',
        insideContent: 'Sawahan, Nganjuk'),
    Content(
        title: 'Roro Kuning',
        image: 'assets/kontenwisata/rorokuning.jpeg',
        insideContent: 'Loceret, Nganjuk'),
    Content(
        title: 'Candi Ngetos',
        image: 'assets/kontenwisata/ngetos.jpeg',
        insideContent: 'Berbek, Nganjuk'),
    Content(
        title: 'Semantok',
        image: 'assets/kontenwisata/bendungan.jpeg',
        insideContent: 'Rejoso, Nganjuk'),
    Content(
        title: 'Sego Jagung',
        image: 'assets/kontenkuliner/nasijagung.jpeg',
        insideContent: 'Nganjuk, Nganjuk'),
    Content(
        title: 'Onde Njeblos',
        image: 'assets/kontenkuliner/Ondeonde.jpeg',
        insideContent: 'Loceret, Nganjuk'),
    Content(
        title: 'Sego Becek',
        image: 'assets/kontenkuliner/segobecek.jpg',
        insideContent: 'Berbek, Nganjuk'),
    Content(
        title: 'Sego Jagung',
        image: 'assets/kontenkuliner/segojagung.jpg',
        insideContent: 'Sukomoro, Nganjuk'),
  ];
}
