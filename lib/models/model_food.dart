class ModelFood {
  String nameFood, imageFood, description;
  int id;
  ModelFood(
      {required this.id,
      required this.nameFood,
      required this.imageFood,
      required this.description});
}

List<ModelFood> foodList = [
  ModelFood(
      id: 1,
      nameFood: 'Angel Hair Pasta',
      imageFood: 'assets/images/AngelHairPasta.png',
      description:
          'The long, delicate strands of angel hair pasta (aka capellini) are best served in light or creamy sauces.'),
  ModelFood(
      id: 2,
      nameFood: 'Bow Tie Pasta (Farfalle)',
      imageFood: 'assets/images/BowTiePasta(Farfalle).png',
      description:
          'Use bow tie pasta to dress up any dish that calls for small pasta shapes, such as penne or shells. Also known as farfalle.'),
  ModelFood(
      id: 3,
      nameFood: 'Bucatini Pasta',
      imageFood: 'assets/images/BucatiniPasta.png',
      description:
          'These long, hollow spaghetti-like tubes (aka perciatelli) are unusual and fun! Try them in casseroles or Asian stir-fries'),
  ModelFood(
      id: 4,
      nameFood: 'Ditalini Pasta',
      imageFood: 'assets/images/DitaliniPasta.png',
      description:
          'Medium-sized, very short tubes with smooth sides. Like most short pasta shapes'),
  ModelFood(
      id: 5,
      nameFood: 'Egg Noodles',
      imageFood: 'assets/images/EggNoodles.png',
      description:
          'These noodles add heartiness to soups, stews, and casseroles, and their flat shape.'),
  ModelFood(
      id: 6,
      nameFood: 'Fusilli Pasta',
      imageFood: 'assets/images/FusilliPasta.png',
      description:
          'This long, thick, spiral-shaped pasta adds an unexpected twist to any recipe that calls for spaghetti.'),
  ModelFood(
      id: 7,
      nameFood: 'Lasagna',
      imageFood: 'assets/images/Lasagna.png',
      description:
          'The name for this long, wide noodle is also the name for the dish. Lasagna (the noodle) can be both flat or with curly edges.'),
  ModelFood(
      id: 8,
      nameFood: 'Linguine',
      imageFood: 'assets/images/Linguine.png',
      description:
          'These long, flat noodles are slightly thicker than spaghetti. The classic Italian restaurant pairing is clam sauce.'),
  ModelFood(
      id: 9,
      nameFood: 'Macaroni',
      imageFood: 'assets/images/Macaroni.png',
      description:
          'A small, tube-shaped pasta, macaroni is terrific in creamy casseroles (like macaroni and cheese).'),
];
