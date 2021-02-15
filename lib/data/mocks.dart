import 'package:places/domain/sight.dart';

final List<Sight> mocks = [
  const Sight(
    nameSight: 'Воронежский областной краеведческий музей',
    lan: 32.149989,
    lon: -110.835842,
    url:
        'https://images.pexels.com/photos/941861/pexels-photo-941861.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    details:
        'Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава, благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного',
    type: SightType.restaurant,
    workTime: 'закрыто до 20:00',
  ),
  const Sight(
    nameSight: 'Airplane Boneyard',
    lan: 32.149989,
    lon: -110.835842,
    url: 'https://twistedsifter.com/wp-content/uploads/2014/02/airplane-boneyard-tucson-arizona-google-earth.jpg',
    details: 'Tucson, Arizona',
    type: SightType.particularPlace,
    workTime: 'закрыто до 10:00',
  ),
  const Sight(
    nameSight: 'Mysterious Desert Pattern',
    lan: 27.380583,
    lon: 33.631839,
    url: 'https://twistedsifter.com/wp-content/uploads/2014/02/crop-circle-egypt-google-earth-strange.jpg',
    details: 'Red Sea Governorate, Egypt',
    type: SightType.park,
    workTime: 'закрыто до 20:00',
  ),
  const Sight(
    nameSight: 'Giant Triangle',
    lan: 33.747252,
    lon: -112.633853,
    url: 'https://twistedsifter.com/wp-content/uploads/2014/02/giant-triangle-google-earth.jpg',
    details: 'Wittmann, Arizona, USA',
    type: SightType.museum,
    workTime: 'c 10:00 до 20:00',
  ),
  const Sight(
    nameSight: 'Giant Turtle',
    lan: 34.747252,
    lon: -111.633853,
    url: 'https://c402277.ssl.cf1.rackcdn.com/photos/18421/images/hero_small/Medium_WW288394.jpg?1578408451',
    details: 'Somewhere',
    type: SightType.hotel,
    workTime: 'c 7:00 до 20:00',
  ),
  const Sight(
    nameSight: 'The Giant',
    lan: 0.747252,
    lon: 0.633853,
    url: 'https://i.pinimg.com/originals/9f/15/de/9f15dee844b7018f63c06c321e197d1d.jpg',
    details: 'Chiangmai Thailand',
    type: SightType.cafe,
    workTime: 'c 7:00 до 20:00',
  ),
];
