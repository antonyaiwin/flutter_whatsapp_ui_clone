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
      'last_message': 'Hey there! How has your day been so far?',
      'time': '1:15 am',
      'count': 0,
      'profile_image': images[0],
    },
    {
      'username': 'Samuel John',
      'last_message':
          "Ever tried a new hobby lately? It can be quite refreshing!",
      'time': '12:45 am',
      'count': 1,
      'profile_image': images[1],
    },
    {
      'username': 'Ashna Pappachan',
      'last_message': 'Any exciting plans for the day? Share your thoughts!',
      'time': '11:55 am',
      'count': 5,
      'profile_image': images[2],
    },
    {
      'username': 'Antony Varghese',
      'last_message': 'Have you explored any interesting places recently?',
      'time': '10:15 am',
      'count': 8,
      'profile_image': images[3],
    },
    {
      'username': 'Clara M',
      'last_message':
          'Thinking of trying out a new recipe for lunch. Any suggestions?',
      'time': '9:26 am',
      'count': 0,
      'profile_image': images[4],
    },
    {
      'username': 'Sandra Jose',
      'last_message': 'Any favorite books or movies you would recommend?',
      'time': '8:25 am',
      'count': 0,
      'profile_image': images[5],
    },
    {
      'username': 'Agnus George',
      'last_message': 'Remember to take short breaks and stretch during work!',
      'time': '8:24 am',
      'count': 5,
      'profile_image': images[6],
    },
    {
      'username': 'Lismy PT',
      'last_message':
          'Excited about any upcoming plans or events? Share your enthusiasm!',
      'time': '8:20 am',
      'count': 2,
      'profile_image': images[7],
    },
    {
      'username': 'Elisa Jacob',
      'last_message':
          'Any recent achievements or proud moments you\'d like to celebrate?',
      'time': '8:20 am',
      'count': 0,
      'profile_image': images[8],
    },
    {
      'username': 'Vivina Jose',
      'last_message': 'Helloo! How are you doing today?',
      'time': '8:15 am',
      'count': 4,
      'profile_image': images[9],
    },
    {
      'username': 'Stephy Jude',
      'last_message': 'Helloo! What\'s on your mind right now?',
      'time': '8:14 am',
      'count': 7,
      'profile_image': images[10],
    },
    {
      'username': 'Joshna Mary',
      'last_message': 'Helloo! Anything exciting happening in your world?',
      'time': '8:10 am',
      'count': 0,
      'profile_image': images[11],
    },
    {
      'username': 'Ann Mariya',
      'last_message': 'Helloo! How\'s your day shaping up?',
      'time': '8:08 am',
      'count': 8,
      'profile_image': images[12],
    },
    {
      'username': 'Anu Varghese',
      'last_message': 'Helloo! Any interesting plans for the day?',
      'time': '8:07 am',
      'count': 2,
      'profile_image': images[13],
    },
    {
      'username': 'Anupam Patel',
      'last_message': 'Helloo! What\'s the latest in your world?',
      'time': '8:06 am',
      'count': 11,
      'profile_image': images[14],
    },
    {
      'username': 'Andriya Sam',
      'last_message': 'Helloo! Hope you have a fantastic day ahead!',
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
