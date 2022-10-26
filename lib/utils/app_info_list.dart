// ДИНАМИЧЕСКАЯ КАРТА ОБЪЕКТОВ ДЛЯ ИМПОРТА
List<Map<String, dynamic>> hotelList = [ //DYNAMIC - ПОТОМУ ЧТО У НАС В КАРТЕ ЕСТЬ ТИПЫ STRING И  INT ВМЕСТЕ
  // Type: List<Map<Variables>>name = [data]
  {// MAP
    'image': 'one.png', // 'key': 'value'
    'place': 'Гостиница Казахстан',
    'destination': 'Алматы',
    'price': 25000,
    },
  {// MAP
    'image': 'two.png',
    'place': 'Восемь Озер',
    'destination': 'Алматы',
    'price': 40000,
  },
  {// MAP
    'image': 'three.png',
    'place': 'Хан - Шатыр',
    'destination': 'Астана',
    'price': 68000,
  },
];

List<Map<String, dynamic>> ticketList = [
  {
    'from': {
      'code':"NQZ",
      'name':"Астана"
    },
    'to': {
      'code':"ALA",
      'name':"Алматы"
    },
    'flying_time': '1Ч 30M',
    'date': "5 Декабря",
    'departure_time':"09:45",
    "number": "KC-672"
  },
  {
    'from': {
      'code':"URA",
      'name':"Уральск"
    },
    'to': {
      'code':"ALA",
      'name':"Алматы"
    },
    'flying_time': '4H 20M',
    'date': "5 Декабря",
    'departure_time':"09:00 AM",
    "number":45
  },
];