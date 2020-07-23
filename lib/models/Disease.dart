class Disease{
  String attacker,diseasesName,diseasesScientificName,reasonOfCaused,category,image;
  List<String> symptoms=[];
  List<String> prevention=[];
  int id;


  Disease({
   this.attacker,this.diseasesName,this.diseasesScientificName,this.reasonOfCaused,this.category,
   this.symptoms,this.prevention,this.image,this.id
});

  getDiseaseName(Disease disease){
    return disease.diseasesName;
  }
}

List<Disease> mango =[
  Disease(
    attacker:"Bacterium" ,
    diseasesName:"Bacterial black " ,// spot (Bacterial canker)

    diseasesScientificName: "Xanthomonas campestris",
    category: "Bacterium",
    id: 1,
    reasonOfCaused: 'The bacteria are harboured in stem lesions (cankers) on seedlings and on bud wood which act as reservoirs'
   +' from which the disease can spread to leaves and fruit. The bacteria may be present without visible'
 + 'symptoms and may not be detected until the mango plant has grown. It is in this form that the bacterium is'
  +'most likely to be introduced into new areas.The disease can spread from tree to tree in the field by wind-driven rain or through implements used for'
    +'management activities such as pruning. Infection is favoured by warm humid conditions with intermittent rain.'
  +'It is reported that infection can be initiated through natural openings in leaves, fruit and stems. The reason'
  +'for this appears to be that wind damage, such as abrasions, provides additional entry points for infection. It is'
  +'known that protection of mango trees by windbreaks reduces the incidence and severity of bacterial black'
  +'spot. It is assumed windbreaks reduce wind velocity at tree height and thereby reduce the dispersal of the'
  +'bacteria by wind.' ,
    symptoms: [
      "Angular, water-soaked spots on leaves which coalesce and turn black",
      "black cankerous lesions on stems which crack and exude a gummy substance",
      "irregular black lesions on fruits which extend into the flesh and exude gum; fruits dropping from plant"
    ],
    prevention: [
      "Collect the fallen fruits and destroy them.",
      "Also harvest fruits early to reduce flies damage.",
      "Use traps to monitor fruit flies. Traps can be purchased in the market or one can prepare themselves. Take plastic container with lids (one quarts yogurt container is fine).",
      "If infestation is severe spray suitable insecticide.",
      "Drill holes (10 to 16 holes) that are 3/16-inch in diameter around the upper side of the container  Change the vinegar every week.",
      " Add 1 to 2 inch of pure apple cider vinegar (not flavored one) and a drop of unscented liquid dish washing soap into the container.",
      "Hang the container in shade near berry trees before fruits ripening and check the traps frequently for flies.",
      "Spraying protein bait under leaf surface attract flies to single spot which make easier to kill them"
    ] ,
    image: "assets/images/Bacterial_black_spot.jpg",
  ),

  Disease(
    attacker:"Fungus" ,
    diseasesName:"Anthracnose" ,
    diseasesScientificName: "Colletotrichum gleosporioides",
    id: 2,
    reasonOfCaused: 'The bacteria are harboured in stem lesions (cankers) on seedlings and on bud wood which act as reservoirs'
        +' from which the disease can spread to leaves and fruit. The bacteria may be present without visible'
        + 'symptoms and may not be detected until the mango plant has grown. It is in this form that the bacterium is'
        +'most likely to be introduced into new areas.The disease can spread from tree to tree in the field by wind-driven rain or through implements used for'
        +'management activities such as pruning. Infection is favoured by warm humid conditions with intermittent rain.'
        +'It is reported that infection can be initiated through natural openings in leaves, fruit and stems. The reason'
        +'for this appears to be that wind damage, such as abrasions, provides additional entry points for infection. It is'
        +'known that protection of mango trees by windbreaks reduces the incidence and severity of bacterial black'
        +'spot. It is assumed windbreaks reduce wind velocity at tree height and thereby reduce the dispersal of the'
        +'bacteria by wind.' ,
    category: "Fungal",
    symptoms: [
      "Small, dark spots on flowers",
      "Spots coalesce to cover entire panicle",
      "Infected flowers dropping from tree",
      "Dark flecks or spots with yellow halo on young leaves",
      "Dark, irregular, sunken lesions on fruit",
      "Fruits dropping from tree before ripe"
    ],
    prevention: [
      "Susceptible mango varieties should be protected with fungicide in commercial production and the timing of the applications are critical to successful control",
      "appropriate fungicide should be applied during flowering and fruit development",
      "emove all weeds from around tree bases",
      "employ a wider tree spacing to increase air circulation around the trees",
      "badly infested trees can be treated with copper containing fungicides",

    ] ,
    image: "assets/images/Anthracnose.jpg",

  ),

  Disease(
  attacker:"Alga" ,
  diseasesName: "Algal leaf spot",
  diseasesScientificName: "Cephaleuros virescens",
  id:3,
  reasonOfCaused:'The bacteria are harboured in stem lesions (cankers) on seedlings and on bud wood which act as reservoirs'
      +' from which the disease can spread to leaves and fruit. The bacteria may be present without visible'
      + 'symptoms and may not be detected until the mango plant has grown. It is in this form that the bacterium is'
      +'most likely to be introduced into new areas.The disease can spread from tree to tree in the field by wind-driven rain or through implements used for'
      +'management activities such as pruning. Infection is favoured by warm humid conditions with intermittent rain.'
      +'It is reported that infection can be initiated through natural openings in leaves, fruit and stems. The reason'
      +'for this appears to be that wind damage, such as abrasions, provides additional entry points for infection. It is'
      +'known that protection of mango trees by windbreaks reduces the incidence and severity of bacterial black'
      +'spot. It is assumed windbreaks reduce wind velocity at tree height and thereby reduce the dispersal of the'
      +'bacteria by wind.' ,
  category: "Other",
  symptoms: [
    "Orange rusty spots on both upper and lower leaf surfaces which may coalesce to form large irregularly shaped patches" ,
    "Scraping away the orange spots reveals a grayish discoloration of the leaf lamina underneath",
  ],
  prevention: [
    "Ensure that trees are properly pruned and fertilized to promote vigor",
    "emove all weeds from around tree bases",
    "employ a wider tree spacing to increase air circulation around the trees",
    "badly infested trees can be treated with copper containing fungicides",
    "Susceptible mango varieties should be protected with fungicide in commercial production and the timing of the applications are critical to successful control",
    "appropriate fungicide should be applied during flowering and fruit development",
  ] ,
  image: "assets/images/Algal_leaf_spot.jpg",

),



  ];


List mangoDiseases =[


];