class Content {
  final String title;
  final String image;
  final String location;
  final String category;

  Content({
    required this.title,
    required this.image,
    required this.location,
    required this.category,
  });

  static List<Content> contents = [
    Content(
        title: 'Sedudo',
        image: 'assets/kontenwisata/sedudo.jpeg',
        location: 'Sawahan, Nganjuk',
        category: 'Wisata'),
    Content(
        title: 'Roro Kuning',
        image: 'assets/kontenwisata/rorokuning.jpeg',
        location: 'Loceret, Nganjuk',
        category: 'Wisata'),
    Content(
        title: 'Candi Ngetos',
        image: 'assets/kontenwisata/ngetos.jpeg',
        location: 'Berbek, Nganjuk',
        category: 'Wisata'),
    Content(
        title: 'Semantok',
        image: 'assets/kontenwisata/bendungan.jpeg',
        location: 'Rejoso, Nganjuk',
        category: 'Wisata'),
    Content(
        title: 'Sego Jagung',
        image: 'assets/kontenkuliner/nasijagung.jpeg',
        location: 'Nganjuk, Nganjuk',
        category: 'Kuliner'),
    Content(
        title: 'Onde Njeblos',
        image: 'assets/kontenkuliner/Ondeonde.jpeg',
        location: 'Loceret, Nganjuk',
        category: 'Kuliner'),
    Content(
        title: 'Sego Becek',
        image: 'assets/kontenkuliner/segobecek.jpg',
        location: 'Berbek, Nganjuk',
        category: 'Kuliner'),
    Content(
        title: 'Sego Jagung',
        image: 'assets/kontenkuliner/segojagung.jpg',
        location: 'Sukomoro, Nganjuk',
        category: 'Kuliner'),
  ];
}
