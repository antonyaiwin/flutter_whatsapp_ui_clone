class DummyDb {
  static List images = [
    'https://images.pexels.com/photos/1520760/pexels-photo-1520760.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1812634/pexels-photo-1812634.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/698532/pexels-photo-698532.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/15019490/pexels-photo-15019490/free-photo-of-portrait-of-a-smiling-man.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/14995438/pexels-photo-14995438/free-photo-of-portrait-of-woman-in-hat.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2748239/pexels-photo-2748239.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2738919/pexels-photo-2738919.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2748242/pexels-photo-2748242.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1003979/pexels-photo-1003979.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2649165/pexels-photo-2649165.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1003979/pexels-photo-1003979.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1988686/pexels-photo-1988686.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3054535/pexels-photo-3054535.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3756985/pexels-photo-3756985.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3762802/pexels-photo-3762802.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3328058/pexels-photo-3328058.jpeg?auto=compress&cs=tinysrgb&w=600',
  ];

  static List dummyChatList = [
    {
      'username': 'Alex Antony',
      'last_message':
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      'time': '1:15 am',
      'count': 0,
      'profile_image': images[0],
    },
    {
      'username': 'Samuel John',
      'last_message':
          'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
      'time': '12:45 am',
      'count': 1,
      'profile_image': images[1],
    },
    {
      'username': 'Ashna Pappachan',
      'last_message':
          'when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      'time': '11:55 am',
      'count': 5,
      'profile_image': images[2],
    },
    {
      'username': 'Antony Varghese',
      'last_message':
          'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
      'time': '10:15 am',
      'count': 8,
      'profile_image': images[3],
    },
    {
      'username': 'Clara M',
      'last_message': 'publishing software ',
      'time': '9:26 am',
      'count': 0,
      'profile_image': images[4],
    },
    {
      'username': 'Sandra Jose',
      'last_message': 'like Aldus PageMaker including versions of Lorem Ipsum.',
      'time': '8:25 am',
      'count': 0,
      'profile_image': images[5],
    },
    {
      'username': 'Agnus George',
      'last_message': 'It was popularised in the 1960s ',
      'time': '8:24 am',
      'count': 5,
      'profile_image': images[6],
    },
    {
      'username': 'Lismy PT',
      'last_message': 'with the release of Letraset sheets containing Lorem',
      'time': '8:20 am',
      'count': 2,
      'profile_image': images[7],
    },
    {
      'username': 'Elisa Jacob',
      'last_message': 'Ipsum passages, and more recently with desktop ',
      'time': '8:20 am',
      'count': 0,
      'profile_image': images[8],
    },
    {
      'username': 'Vivina Jose',
      'last_message': 'helloo',
      'time': '8:15 am',
      'count': 4,
      'profile_image': images[9],
    },
    {
      'username': 'Stephy Jude',
      'last_message': 'helloo',
      'time': '8:14 am',
      'count': 7,
      'profile_image': images[10],
    },
    {
      'username': 'Joshna Mary',
      'last_message': 'helloo',
      'time': '8:10 am',
      'count': 0,
      'profile_image': images[11],
    },
    {
      'username': 'Ann Mariya',
      'last_message': 'helloo',
      'time': '8:08 am',
      'count': 8,
      'profile_image': images[12],
    },
    {
      'username': 'Anu Varghese',
      'last_message': 'helloo',
      'time': '8:07 am',
      'count': 2,
      'profile_image': images[13],
    },
    {
      'username': 'Anupam Patel',
      'last_message': 'helloo',
      'time': '8:06 am',
      'count': 11,
      'profile_image': images[14],
    },
    {
      'username': 'Andriya Sam',
      'last_message': 'helloo',
      'time': '8:04 am',
      'count': 0,
      'profile_image': images[15],
    },
  ];
  static List dummyStatusList = [...dummyChatList]..shuffle();
  static List dummyCallList = [...dummyChatList]..shuffle();

  static Map dummyMyStatusMap = {
    'username': 'My status',
    'last_message': 'Tap to add status update',
    'time': 'Tap to add status update',
    'count': 0,
    'profile_image':
        'https://images.pexels.com/photos/3579181/pexels-photo-3579181.jpeg?auto=compress&cs=tinysrgb&w=600',
  };
}
