import 'package:aviao/data/cities_data.dart';
import 'package:aviao/data/models/trip.dart';

import 'models/city.dart';

List<Trip> tripsData() {
  List<String> activitiesDesrt() {
    return [
      'Go on a jeep safari',
      'Be brave to try out dune bashing',
      'Ride a dirt bike in the desert…',
      'Hop on a hot air balloon and see the desert from the sky',
      'Learn about falconry in the desert',
      'Have fun on a sandboard',
      'Go on a camel safari and explore the desert',
      'Go horse riding',
      'Ride a quad bike or drive a buggy',
      'Get in a vintage Land Rover',
      'Discover Hatta Heritage Village',
      'Encounter wildlife at Dubai Desert Conservation Reserve',
      'Spend a night at the camp in the desert',
      'Taste local cuisine and enjoy a show',
      'Try a desert safari by night',
      'Get mesmerised by stargazing',
    ];
  }

  List<String> activitiesMountains() {
    return [
      'Parachuting',
      'Mountaineering',
      'Mushroom hunting',
      'Canyoning',
      'Rock climbing',
      'Caving',
      'Horse trekking',
      'Hot-air ballooning',
      'Paragliding and hang-gliding'
    ];
  }

  Map<String, List<String>> getCitiesNames() {
    Map<String, List<String>> cityCountry = {};
    for (City city in citiesData) {
      cityCountry[city.cityId] = [city.cityName, city.countryName];
    }
    return cityCountry;
  }

  final Map<String, List<String>> getCityAndCountryNames = getCitiesNames();

  // List getCityAndCountryNames(String cityId) {
  //   final city = citiesData.firstWhere((element) => element.cityId == cityId);
  //   return [city.cityName, city.countryName];
  // }

  return [
    Trip(
      city: getCityAndCountryNames['city22']![0],
      country: getCityAndCountryNames['city22']![1],
      id: 'm541',
      categories: ['c8', 'c6'],
      title: 'Statue of Liberty',
      tripType: TripType.Exploration,
      season: Season.Summer,
      description:
          "The Statue of Liberty (Liberty Enlightening the World; French: La Liberté éclairant le monde) is a colossal neoclassical sculpture on Liberty Island in New York Harbor in New York City, in the United States. The copper statue, a gift from the people of France to the people of the United States, was designed by French sculptor Frédéric Auguste Bartholdi and its metal framework was built by Gustave Eiffel. The statue was dedicated on October 28, 1886.",
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/3/3b/Statue_of_Liberty.jpg',
      duration: 20,
      activities: ['Take Photos'],
      program: ["Exploration"],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),
    Trip(
      city: getCityAndCountryNames['city21']![0],
      country: getCityAndCountryNames['city21']![1],
      id: 'm1',
      categories: ['c1', 'c5'],
      title: 'Alpen',
      tripType: TripType.Exploration,
      season: Season.Winter,
      description:
          "The Alps are the highest and most extensive mountain range system that lies entirely in Europe stretching approximately 1,200 km (750 mi) across eight Alpine countries (from west to east): France, Switzerland, Monaco, Italy, Liechtenstein, Austria, Germany, and Slovenia.",
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/8/82/Mont_Blanc_oct_2004.JPG',
      duration: 20,
      activities: activitiesMountains(),
      program: ["Hiking", "Camping", "Jumping"],
      isInSummer: false,
      isForFamilies: true,
      isInWinter: true,
    ),

    Trip(
      id: 'm6',
      categories: [
        'c2',
      ],
      city: getCityAndCountryNames["city14"]![0],
      country: getCityAndCountryNames["city14"]![1],
      description:
          "Emerald Lake is located in Yoho National Park, British Columbia, Canada.[1] Yoho National Park is one of the 4 contiguous National Parks in the heart of Canada's Rocky Mountains, along the boundary of British Columbia and Alberta Provinces, the other Parks are Kootenay, Jasper, and Banff. Many Provincial Parks, having near-similar environmental protection and as-spectacular nature, also join these federal reserves. Emerald Lake Lodge, a high-end lodge or hotel, is on a peninsula jutting into the lake, it was founded in the 1920's and completely re-built in the 1980's",
      title: 'Emerald Lake',
      tripType: TripType.Exploration,
      season: Season.Summer,
      imageUrl:
          'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
      duration: 240,
      activities: [],
      program: [],
      isInSummer: true,
      isForFamilies: false,
      isInWinter: false,
    ),

    Trip(
      id: 'm18',
      categories: [
        'c4',
      ],
      city: getCityAndCountryNames['city1']![0],
      country: getCityAndCountryNames['city1']![1],
      description:
          "The vast Gobi Desert covers northern China and southern Mongolia. It features mountains, an evergreen forest and a beautiful dune system – the Khongoryn Els. The dunes are also known as the Duut Mankhan or ‘Singing Dunes’ because of the sound they make when the sand is moved by the wind.",
      title: 'Gobi Desert',
      tripType: TripType.Exploration,
      season: Season.Summer,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Gobi_Desert_dunes.jpg/800px-Gobi_Desert_dunes.jpg',
      duration: 3,
      activities: activitiesDesrt(),
      program: [
        'Explore the place',
        'camping',
        'Barbecue',
      ],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),
    Trip(
      id: 'm19',
      categories: ['c4'],
      title: 'Kalahari',
      city: getCityAndCountryNames["city2"]![0],
      country: getCityAndCountryNames["city2"]![1],
      tripType: TripType.Exploration,
      season: Season.Summer,
      description:
          "Spreading across Namibia, Botswana and South Africa, the Kalahari is arguably the best safari destination in the world. The massive Central Kalahari Game Reserve is home to lions, large herds of springbok, wildebeest and giraffe as well as breath-taking views.",
      imageUrl:
          'https://images.unsplash.com/photo-1497598315776-c2e30b55e4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1569&q=80',
      duration: 3,
      activities: activitiesDesrt(),
      program: [
        'Explore the place',
        'camping',
        'Barbecue',
      ],
      isInSummer: true,
      isForFamilies: false,
      isInWinter: true,
    ),
    Trip(
      id: 'm20',
      categories: ['c4'],
      title: 'Namib',
      city: getCityAndCountryNames["city3"]![0],
      country: getCityAndCountryNames["city3"]![1],
      tripType: TripType.Exploration,
      season: Season.Summer,
      description:
          "Namibia’s desert is an ideal holiday destination for adventure seekers. It’s stunning Sossusvlei sand dunes, the second largest in the world, are perfect for sandboarding and hot air balloon rides give travellers some of the best views of a desert imaginable. ",
      imageUrl:
          'https://www.allcleartravel.co.uk/wp-content/uploads/The-Best-Desert-Holiday-Destinations-on-Earth-Namib-dunes.jpg',
      duration: 8,
      activities: activitiesDesrt(),
      program: [
        'Climb the 325m ‘Big Daddy’ sand dune for views of the surreal landscape of Dead Vlei, a white pan filled with the dark fossils of camelthorn trees.'
            'Explore the place',
        'camping',
        'Barbecue',
      ],
      isInSummer: true,
      isForFamilies: false,
      isInWinter: true,
    ),
    Trip(
      id: 'm21',
      categories: ['c4'],
      title: 'Atacama',
      city: getCityAndCountryNames["city4"]![0],
      country: getCityAndCountryNames["city4"]![1],
      tripType: TripType.Exploration,
      season: Season.Autumn,
      description:
          "Atacama is probably the best all-round desert travel location. From the El Tatio geysers and the hot springs at Miscanti to watching the sunset over Moon Valley – some of the experience are extraordinary. There’s also plenty to do including hiking, horseback riding, stargazing and safaris. ",
      imageUrl:
          'https://images.unsplash.com/photo-1510940402025-b2c518ff4085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1633&q=80',
      duration: 1,
      activities: activitiesDesrt(),
      program: [
        'Explore the place',
        'camping',
        'Barbecue',
      ],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),
    Trip(
      id: 'm22',
      categories: ['c4'],
      title: 'Thar',
      city: getCityAndCountryNames["city5"]![0],
      country: getCityAndCountryNames["city5"]![1],
      tripType: TripType.Activities,
      season: Season.Autumn,
      description:
          "The Thar Desert is the most densely populated in the world and lies mostly within the Indian state of Rajasthan. There are plenty of camel and 4X4 safaris, but for many, the town of Jaisalmer is the highlight. Its striking yellow sandstone fort is a World Heritage Site and looks over one of the most enchanting places on the subcontinent.",
      imageUrl:
          'https://www.allcleartravel.co.uk/wp-content/uploads/The-Best-Desert-Holiday-Destinations-on-Earth-camel-riding-through-the-Thar-Desert.jpg',
      duration: 1,
      activities: activitiesDesrt(),
      program: [
        'Camping under the stars among the sand dunes at luxury glamping sites is a truly unique experience.',
      ],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: false,
    ),
    Trip(
      id: 'm23',
      categories: ['c4'],
      title: 'Dubai Desert',
      city: getCityAndCountryNames["city6"]![0],
      country: getCityAndCountryNames["city6"]![1],
      tripType: TripType.Activities,
      season: Season.Spring,
      description:
          "Most travel experiences in Dubai are about luxury and its desert is no exception. Hot air balloon rides, quad biking adventures, camel treks and adrenaline-pumping Jeep safaris over the dunes are ideal for adventurous types. If you’re after something a little more serene, there are a number of plush hotels and glamping resorts dotting the landscape.",
      imageUrl:
          'https://www.mydubai.com.au/wp-content/uploads/sites/23/2017/06/MYD_My-Dubai_Holidays_900x600_camel.jpg',
      duration: 7,
      activities: activitiesDesrt(),
      program: [
        'Camping under the stars among the sand dunes at luxury glamping sites is a truly unique experience.',
      ],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: false,
    ),
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Trip(
      id: 'm24',
      categories: ['c1'],
      title: 'Matterhorn',
      city: getCityAndCountryNames["city7"]![0],
      country: getCityAndCountryNames["city7"]![1],
      tripType: TripType.Exploration,
      season: Season.Summer,
      description:
          "This Alpine peak spans the border between Switzerland and Italy. At 4,478 metres it’s smaller than the famed Mont Blanc (4,810 metres), but its striking pyramidal shape – not to mention its spot overlooking the cosy Swiss ski town of Zermatt – makes it the poster child for the Alps.",
      imageUrl:
          'https://marylineg1.sg-host.com/blog/wp-content/uploads/2018/12/matterhorn-1313x875.jpg',
      duration: 5,
      activities: activitiesMountains(),
      program: ['Camping', 'Climb & Trekking', 'Hiking'],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),
    Trip(
      id: 'm25',
      categories: ['c1', 'c5'],
      title: 'Denali',
      city: getCityAndCountryNames["city8"]![0],
      country: getCityAndCountryNames["city8"]![1],
      tripType: TripType.Recovery,
      season: Season.Winter,
      description:
          "Mammoth Denali is the highest peak in all of North America. Craggy and snow-covered, it soars to more than 6,190 metres above sea level, rising from the stark valleys of Alaska’s Denali National Park. The mountain was once known as Mt McKinley, but after many decades of controversy, in 2016, the peak was officially dubbed Denali, a name long used by native peoples.",
      imageUrl:
          'https://marylineg1.sg-host.com/blog/wp-content/uploads/2018/12/denali-1313x875.jpg',
      duration: 3,
      activities: activitiesMountains(),
      program: ['Camping', 'Climb & Trekking', 'Hiking'],
      isInSummer: true,
      isForFamilies: false,
      isInWinter: true,
    ),
    Trip(
      id: 'm26',
      categories: ['c1', 'c9'],
      title: 'Kirkjufell',
      city: getCityAndCountryNames["city9"]![0],
      country: getCityAndCountryNames["city9"]![1],
      tripType: TripType.Recovery,
      season: Season.Winter,
      description:
          "The strangely conical Kirkjufell, or “church mountain”, is often touted as Iceland’s most photographed sight. It’s not hard to see why. The yellow-green bluff looms over West Iceland’s Snæfellsnes peninsula, with pretty waterfall Kirkjufellsfoss and several sandy beaches in its wake. Such is its drama that the mountain even made a cameo in series seven of cult TV show Games of Thrones.",
      imageUrl:
          'https://marylineg1.sg-host.com/blog/wp-content/uploads/2018/12/kirkjufell-1313x875.jpg',
      duration: 1,
      activities: activitiesMountains(),
      program: ['Camping', 'Climb & Trekking', 'Hiking'],
      isInSummer: false,
      isForFamilies: false,
      isInWinter: true,
    ),

    Trip(
      id: 'm27',
      categories: ['c1', 'c9', 'c5'],
      title: 'Mount Fuji',
      city: getCityAndCountryNames["city10"]![0],
      country: getCityAndCountryNames["city10"]![1],
      tripType: TripType.Recovery,
      season: Season.Autumn,
      description:
          "Mount Fuji is the largest peak in Japan. It tops out at a whopping 3,775 metres, and is at its best when finished with a generous hood of snow. It has great cultural significance too. The mountain has long been considered sacred, attracting centuries’ worth of pilgrims of Buddhist, Shinto and other faiths.",
      imageUrl:
          'https://marylineg1.sg-host.com/blog/wp-content/uploads/2019/01/mount-fuji-1313x875.jpg',
      duration: 1,
      activities: activitiesMountains(),
      program: ['Camping', 'Climb & Trekking', 'Hiking'],
      isInSummer: true,
      isForFamilies: false,
      isInWinter: true,
    ),

    Trip(
      id: 'm28',
      categories: ['c1', 'c9', 'c5'],
      title: 'Everest',
      city: getCityAndCountryNames["city11"]![0],
      country: getCityAndCountryNames["city11"]![1],
      tripType: TripType.Exploration,
      season: Season.Winter,
      description:
          "No list of the world’s great peaks would be complete without Everest. The mother of all mountains, she rises to more than 8,848 metres, jutting out of the Himalayas, on the Nepal-Tibet border. Climbing Everest is an extreme and costly undertaking, but still hundreds of adventurous souls brave it each year. Most set out from the little town Lukla in Nepal, having flown in from Kathmandu. From here the trek to the Everest Base Camp should take about 10 days.",
      imageUrl:
          'https://marylineg1.sg-host.com/blog/wp-content/uploads/2019/01/mount-everest-1313x875.jpg',
      duration: 10,
      activities: activitiesMountains(),
      program: ['Camping', 'Climb & Trekking', 'Hiking'],
      isInSummer: true,
      isForFamilies: false,
      isInWinter: true,
    ),
    Trip(
      id: 'm29',
      categories: ['c1', 'c5'],
      title: 'Kilimanjaro',
      city: getCityAndCountryNames["city12"]![0],
      country: getCityAndCountryNames["city12"]![1],
      tripType: TripType.Activities,
      season: Season.Summer,
      description:
          "Another bucket-list-topping peak is volcanic Kilimanjaro, which you’ll find in north-eastern Tanzania, right in the centre of its namesake national park. The “Roof of Africa” is a fitting nickname for the mountain, which is 5,895m at its highest point..",
      imageUrl:
          'https://marylineg1.sg-host.com/blog/wp-content/uploads/2019/01/kilimanjaro-1308x875.jpg',
      duration: 10,
      activities: activitiesMountains(),
      program: ['Camping', 'Climb & Trekking', 'Hiking'],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),
    Trip(
      id: 'm30',
      categories: ['c1'],
      title: 'Huangshan',
      city: getCityAndCountryNames["city13"]![0],
      country: getCityAndCountryNames["city13"]![1],
      tripType: TripType.Activities,
      season: Season.Summer,
      description:
          "Mount Huangshan thoroughly deserves its nickname: “the loveliest mountain in China”. As if plucked straight from Avatar, the huge rock formations are made even more mysterious by a perpetual layer of mist.",
      imageUrl:
          'https://marylineg1.sg-host.com/blog/wp-content/uploads/2019/01/mount-huangshan-1313x875.jpg',
      duration: 1,
      activities: activitiesMountains(),
      program: ['Camping', 'Climb & Trekking', 'Hiking'],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: false,
    ),

    Trip(
      id: 'm31',
      categories: ['c1', 'c2', 'c9', 'c5'],
      title: 'Castle ',
      city: getCityAndCountryNames["city14"]![0],
      country: getCityAndCountryNames["city14"]![1],
      tripType: TripType.Activities,
      season: Season.Summer,
      description:
          "Banff National Park has plenty of peaks, but Castle Mountain is the most unique. And it’s easy to see how it got its name. The mountain resembles a turreted fortress, perched ominously above the spruce and fir trees in the Canadian Rockies.",
      imageUrl:
          'https://marylineg1.sg-host.com/blog/wp-content/uploads/2019/01/castle-mountain-1313x875.jpg',
      duration: 3,
      activities: activitiesMountains(),
      program: ['Camping', 'Climb & Trekking', 'Hiking'],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: false,
    ),
    ///////////////////////////////////////////////////////////////////////////////////
    Trip(
      id: 'm32',
      categories: ['c6'],
      title: 'Eiffel Tower ',
      city: getCityAndCountryNames["city15"]![0],
      country: getCityAndCountryNames["city15"]![1],
      tripType: TripType.Exploration,
      season: Season.Summer,
      description:
          "This metal tower with three floors stands in the city centre of Paris. It was built for the 1889 World Fair (Universal Expo) to celebrate the 100th anniversary of the French Revolution.",
      imageUrl:
          'https://www.kids-world-travel-guide.com/images/xparis_eiffeltower_ssk500.jpeg.pagespeed.ic.2lwZPZtnJ8.jpg',
      duration: 3,
      activities: ['Exploration'],
      program: ['Exploration'],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),

    Trip(
      id: 'm33',
      categories: ['c6'],
      title: 'Great Wall of China',
      city: getCityAndCountryNames["city16"]![0],
      country: getCityAndCountryNames["city16"]![1],
      tripType: TripType.Exploration,
      season: Season.Summer,
      description:
          "The Great Wall is one of the seven wonders of the world. It runs in sections over a very long distance across China. The wall is also referred to as ‘Long Wall’ as it is over 21,196 km/13,171 miles long. It was built with stones, bricks and tiles, earth as well as of wooden material. The wall was completed in 1644, but it took more than 2,000 years to build.",
      imageUrl:
          'https://www.kids-world-travel-guide.com/images/xchina_wall_ssk500.jpeg.pagespeed.ic.g_9Qpc2Tzf.jpg',
      duration: 3,
      activities: ['Exploration'],
      program: ['Exploration'],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),

    Trip(
      id: 'm34',
      categories: ['c6'],
      title: 'kremlin',
      city: getCityAndCountryNames["city17"]![0],
      country: getCityAndCountryNames["city17"]![1],
      tripType: TripType.Exploration,
      season: Season.Summer,
      description:
          "The Grand Kremlin Palace is part of the Kremlin complex and is located next to the Red Square and St Basil’s Cathedral in Russia’s capital city Moscow..",
      imageUrl:
          'https://www.kids-world-travel-guide.com/images/xrussia_kremlin_500.jpeg.pagespeed.ic.7xplAtki0b.jpg',
      duration: 3,
      activities: ['Exploration'],
      program: ['Exploration'],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),
    Trip(
      id: 'm35',
      categories: ['c6'],
      title: 'Pisa',
      city: getCityAndCountryNames["city18"]![0],
      country: getCityAndCountryNames["city18"]![1],
      tripType: TripType.Exploration,
      season: Season.Summer,
      description:
          "The Leaning Tower of Pisa is one of Italy’s major tourist attractions. The freestanding bell tower of the Pisa Cathedral was built over almost two hundred years and was finished in 1399.",
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/6/66/The_Leaning_Tower_of_Pisa_SB.jpeg',
      duration: 3,
      activities: ['Exploration'],
      program: ['Exploration'],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),
    Trip(
      id: 'm36',
      categories: ['c6'],
      title: 'Pyramids',
      city: getCityAndCountryNames["city19"]![0],
      country: getCityAndCountryNames["city19"]![1],
      tripType: TripType.Exploration,
      season: Season.Summer,
      description:
          "The Great Pyramid of Giza near Cairo is one of the Seven Wonders of the Ancient World and the only one of these ancient world wonders which still exists. The pyramids are made of stone and bricks and stand near Cairo which is the capital of Egypt.",
      imageUrl:
          'https://www.kids-world-travel-guide.com/images/xpyramids_giza_500.jpeg.pagespeed.ic.L6HuuLoR_9.jpg',
      duration: 3,
      activities: ['Exploration'],
      program: ['Exploration'],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: false,
    ),
    Trip(
      id: 'm37',
      categories: ['c6'],
      title: 'Sphinx',
      city: getCityAndCountryNames["city19"]![0],
      country: getCityAndCountryNames["city19"]![1],
      tripType: TripType.Exploration,
      season: Season.Summer,
      description:
          "The Egyptian pyramids were built during a time when there was only manual labour and no machine lifting equipment available. The pyramids were build to house the bodies of the pharaoh who ruled in ancient Egypt. Next to the Giza pyramids there is the Sphinx, the famous monument of a lion body with a pharaoh’s head..",
      imageUrl:
          'https://www.kids-world-travel-guide.com/images/xegypt_sphinx-2.jpg.pagespeed.ic.1SBn4zXoeX.jpg',
      duration: 3,
      activities: ['Exploration'],
      program: ['Exploration'],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: false,
    ),
    Trip(
      id: 'm38',
      categories: ['c6'],
      title: 'Opera House',
      city: getCityAndCountryNames["city20"]![0],
      country: getCityAndCountryNames["city20"]![1],
      tripType: TripType.Exploration,
      season: Season.Summer,
      description:
          "The Sydney Opera House, built in Australia’s biggest city, is famous for its roof’s architecture resembling shells or sails. The opera house was designed by Jørn Utzon from Denmark and it was built between 1959 and 1973.",
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/9/98/SydneyOperaHouse.jpg',
      duration: 3,
      activities: ['Exploration'],
      program: ['Exploration'],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),
    Trip(
      id: 'm2',
      categories: [
        'c1',
      ],
      title: 'West Mount',
      tripType: TripType.Exploration,
      season: Season.Winter,
      imageUrl:
          'https://images.unsplash.com/photo-1612456225451-bb8d10d0131d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      duration: 10,
      activities: activitiesMountains(),
      program: ['Hiking'],
      isInSummer: false,
      isForFamilies: false,
      isInWinter: false,
    ),
    Trip(
      id: 'm3',
      categories: [
        'c1',
      ],
      title: 'High Mount',
      tripType: TripType.Recovery,
      season: Season.Winter,
      imageUrl:
          'https://images.unsplash.com/photo-1592221912790-2b4df8882ea9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzd8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      duration: 45,
      activities: activitiesMountains(),
      program: [],
      isInSummer: false,
      isForFamilies: false,
      isInWinter: true,
    ),
    const Trip(
      id: 'm4',
      categories: [
        'c2',
        'c1',
      ],
      title: 'Large Lake',
      tripType: TripType.Activities,
      season: Season.Spring,
      imageUrl:
          'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      duration: 60,
      activities: [],
      program: [],
      isInSummer: false,
      isForFamilies: false,
      isInWinter: false,
    ),
    const Trip(
      id: 'm5',
      categories: [
        'c2',
        'c1',
      ],
      title: 'Small Lakes',
      tripType: TripType.Activities,
      season: Season.Winter,
      imageUrl:
          'https://images.unsplash.com/photo-1580100586938-02822d99c4a8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGxha2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
      duration: 15,
      activities: [],
      program: [],
      isInSummer: true,
      isForFamilies: false,
      isInWinter: true,
    ),
    const Trip(
      id: 'm7',
      categories: [
        'c3',
      ],
      title: 'Miami Beache',
      tripType: TripType.Exploration,
      season: Season.Winter,
      imageUrl:
          'https://images.unsplash.com/photo-1493558103817-58b2924bce98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
      duration: 20,
      activities: [],
      program: [],
      isInSummer: true,
      isForFamilies: false,
      isInWinter: false,
    ),
    const Trip(
      id: 'm8',
      categories: [
        'c3',
      ],
      title: 'Large Beache',
      tripType: TripType.Recovery,
      season: Season.Spring,
      imageUrl:
          'https://images.unsplash.com/photo-1519046904884-53103b34b206?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2h8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      duration: 35,
      activities: [],
      program: [],
      isInSummer: true,
      isForFamilies: false,
      isInWinter: true,
    ),
    const Trip(
      id: 'm9',
      categories: [
        'c3',
      ],
      title: 'Rocks Beache',
      tripType: TripType.Exploration,
      season: Season.Summer,
      imageUrl:
          'https://images.unsplash.com/photo-1519602035691-16ac091344ef?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjE1fHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
      duration: 45,
      activities: [],
      program: [],
      isInSummer: true,
      isForFamilies: false,
      isInWinter: false,
    ),
    Trip(
      id: 'm10',
      categories: [
        'c4',
      ],
      title: 'Arabic Large Desert',
      tripType: TripType.Activities,
      season: Season.Winter,
      imageUrl:
          'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      duration: 30,
      activities: activitiesDesrt(),
      program: [],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),
    Trip(
      id: 'm11',
      categories: [
        'c4',
        'c1',
      ],
      title: 'West Deasert',
      tripType: TripType.Activities,
      season: Season.Winter,
      imageUrl:
          'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
      duration: 30,
      activities: activitiesDesrt(),
      program: [],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),
    Trip(
      id: 'm12',
      categories: [
        'c4',
      ],
      title: 'Sand Deasert',
      tripType: TripType.Activities,
      season: Season.Winter,
      imageUrl:
          'https://images.unsplash.com/photo-1452022582947-b521d8779ab6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8ODN8fGRlc2VydHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
      duration: 30,
      activities: activitiesDesrt(),
      program: [],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),
    const Trip(
      id: 'm13',
      categories: [
        'c8',
      ],
      title: 'Venesia',
      tripType: TripType.Activities,
      season: Season.Winter,
      imageUrl:
          'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDJ8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
      duration: 30,
      activities: [],
      program: [],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),
    const Trip(
      id: 'm14',
      categories: [
        'c8',
      ],
      title: 'Firenze',
      tripType: TripType.Activities,
      season: Season.Winter,
      imageUrl:
          'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjR8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
      duration: 30,
      activities: [],
      program: [],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),

    const Trip(
      id: 'm16',
      categories: [
        'c5',
      ],
      title: 'Skiing',
      tripType: TripType.Activities,
      season: Season.Winter,
      imageUrl:
          'https://images.unsplash.com/photo-1605540436563-5bca919ae766?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c2tpaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
      duration: 30,
      activities: [],
      program: [],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),
    const Trip(
      id: 'm17',
      categories: [
        'c8',
      ],
      title: 'Jet Skiting',
      tripType: TripType.Activities,
      season: Season.Spring,
      imageUrl:
          'https://images.unsplash.com/photo-1601024445121-e5b82f020549?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBhcmFjaHV0ZSUyMGp1bXBpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
      duration: 30,
      activities: [],
      program: [],
      isInSummer: true,
      isForFamilies: true,
      isInWinter: true,
    ),
  ];
}
