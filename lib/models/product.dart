class Product {
  final int id, price;
  final String title, description, image,scientificName,category;

  Product({this.id, this.price, this.title, this.description, this.image,this.scientificName,this.category});
}

List<Product> products = [
  Product(
    id: 1,
    price: 56,
    category:"Fruit" ,
    title: "Mango",
    scientificName: "Mangifera indica",
    image: "assets/images/mango2.png",
    description:
        "A mango is a juicy stone fruit produced from numerous species of tropical trees belonging to the flowering plant genus Mangifera, cultivated mostly for their edible fruit."
            +" Most of these species are found in nature as wild mangoes. The genus belongs to the cashew family Anacardiaceae.",
  ),
  Product(
    id: 2,
    price: 68,
    category:"Fruit" ,
    title: "Banana",
    scientificName: "Musa acuminata",
    image: "assets/images/banana.png",
    description:"A banana is an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa. In some countries,"
        +" bananas used for cooking may be called 'plantains', distinguishing them from dessert bananas.",
  ),
  Product(
    id: 3,
    price: 39,
    category:"Fruit" ,
    title: "Apple",
    scientificName: "Malus domestica",
    image: "assets/images/apple2.png",
    description:'An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus.'
        +' The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today',
  ),
  Product(
    id: 4,
    price: 39,
    category:"Fruit" ,
    title: "Orange",
    scientificName: "Citrus X sinensis",
    image: "assets/images/orange.png",
    description:'The orange is the fruit of various citrus species in the family Rutaceae; it primarily refers to Citrus × sinensis,'
        +' which is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange.',
  ),
  Product(
    id: 5,
    price: 39,
    category:"Fruit" ,
    title: "Pineapple",
    scientificName: "Ananas comosus",
    image: "assets/images/pineapple2.png",
    description:'The pineapple is a tropical plant with an edible fruit and the most economically significant plant in the family Bromeliaceae.'
      +  ' The pineapple is indigenous to South America, where it has been cultivated for many centuries',

  ),
  Product(
    id: 6,
    price: 12,
    category:"Vegetable" ,
    title: "Broccoli",
    scientificName: "Brassica oleracea var. italica",
    image: "assets/images/brocoli.png",
    description: 'Broccoli is an edible green plant in the cabbage family whose large flowering head and stalk is eaten as a vegetable. The word broccoli comes from the Italian plural of broccolo, which means "the flowering crest of a cabbage", and is the diminutive '
        +'form of brocco, meaning "small nail" or "sprout".',

  ),
  Product(
    id: 7,
    price:11 ,
    category:"Vegetable" ,

    title: "Carrot",
    scientificName: "Daucus carota subsp. sativus",
    image: "assets/images/carrot.png",
    description: 'The carrot is a root vegetable, usually orange in colour, though purple, black, red, white, and yellow cultivars exist. They are a domesticated form of the wild carrot, Daucus carota, native to Europe'
        ' and Southwestern Asia. The plant probably originated in Persia and was originally cultivated for its leaves and seeds.',

  ),
  Product(
    id: 229,
    price: 11,
    title: "Onion",
    category:"Vegetable" ,

    scientificName: "Allium cepa",
    image: "assets/images/onion.png",
    description: "This genus also contains several other species variously referred to as onions and cultivated for food, such as the Japanese bunching onion (Allium fistulosum), the tree onion (A. ×proliferum), and the Canada onion (Allium canadense). The name 'wild onion' is applied to a number of Allium species, but A. cepa is exclusively known from cultivation. Its ancestral wild original form is not known, although escapes from cultivation have become established in some regions.[4] The onion is most"
    +" frequently a biennial or a perennial plant, but is usually treated as an annual and harvested in its first growing season.",

  ),
  Product(
    id: 8,
    price: 11,
    title: "Ginger",
    category:"Vegetable" ,

    scientificName: "Zingiber officinale",
    image: "assets/images/ginger.png",
    description: "Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a "
        +"folk medicine. It is a herbaceous perennial which grows annual pseudostems about one meter tall bearing narrow leaf blades.",

  ),
  Product(
    id: 9,
    price: 11,
    title: "Eggplant",
    category:"Vegetable" ,

    scientificName: "Solanum melongena",
    image: "assets/images/eggplant.png",
    description: "Eggplant, aubergine or brinjal is a plant species in the nightshade family Solanaceae. Solanum melongena is grown worldwide for its edible fruit. Most commonly purple, the spongy, absorbent fruit is "
        "used in several cuisines. Typically used as a vegetable in cooking, it is a berry by botanical definition.",

  ),
  Product(
    id: 10,
    price: 6,
    category: "Flower",
    title: "Rose",
    scientificName: "Rosa",
      image: "assets/images/rose.png",
    description: "A rose is a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. There are over three hundred species and tens of thousands of cultivars. "
        +"They form a group of plants that can be erect shrubs, climbing, or trailing, with stems that are often armed with sharp prickles."
  ),
  Product(
      id: 11,
      price: 6,
      category: "Flower",
      title: "Jasmine",
      scientificName: "Jasminum",
      image: "assets/images/jesmin.png",
      description: "Jasmine is a genus of shrubs and vines in the olive family. It contains around 200 species native to tropical and warm temperate regions of Eurasia and Oceania. "
         + "Jasmines are widely cultivated for the characteristic fragrance of their flowers.",
  ),
  Product(
      id: 12,
      price: 6,
      category: "Flower",
      title: "Sunflower",
      scientificName: "Helianthus annuus",
      image: "assets/images/sunflower.png",
      description: "Helianthus annuus, the common sunflower, is a large annual forb of the genus Helianthus grown as a crop for its edible oil and edible fruits. This sunflower species is also used as wild bird food,"
          +" as livestock forage, in some industrial applications, and as an ornamental in domestic gardens."
  ),
  Product(
      id: 13,
      price: 6,
      category: "Flower",
      title: "Lily",
      scientificName: "Lillium",
      image: "assets/images/lily.png",
      description: "Lilium is a genus of herbaceous flowering plants growing from bulbs, all with large prominent flowers."
          " Lilies are a group of flowering plants which are important in culture and literature in much of the world."
  ),
];
/* Column(
                             children:listName.asMap()
                                 .entries.map((MapEntry map) => Text(map.value)).toList(),
                           ),*/