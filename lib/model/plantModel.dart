
class Plant {
  final int plantId;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String plantName;
  final String image;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Plant(
      {required this.plantId,
        required this.plantName,
        required this.size,
        required this.rating,
        required this.humidity,
        required this.temperature,
        required this.image,
        required this.isFavorated,
        required this.decription,
        required this.isSelected});

  //List of Plants data
  static List<Plant> home = [
    Plant(
        plantId: 0,
        plantName: 'Filodendro Atom',
        size: 'Small',
        rating: 4.5,
        humidity: 34,
        temperature: '23 - 34',
        image: 'assets/image/img_1.png',
        isFavorated: true,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 1,
        plantName: 'Monstera Deliciosa',
        size: 'Medium',
        rating: 4.8,
        humidity: 56,
        temperature: '19 - 22',
        image: 'assets/image/img_2.png',
        isFavorated: false,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 2,
        plantName: 'Chlorophytum',
        size: 'Large',
        rating: 4.7,
        humidity: 34,
        temperature: '22 - 25',
        image: 'assets/image/img_3.png',
        isFavorated: false,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 3,
        plantName: 'Kentiapalm',
        size: 'Small',
        rating: 4.5,
        humidity: 35,
        temperature: '23 - 28',
        image: 'assets/image/img_4.png',
        isFavorated: false,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 4,
        plantName: 'Peperomia Obtusifolia',
        size: 'Large',
        rating: 4.1,
        humidity: 66,
        temperature: '12 - 16',
        image: 'assets/image/img_5.png',
        isFavorated: true,
        decription:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
  ];

  /*static List<Plant> getFavoritedPlants(){
    List<Plant> _travelList = Plant.home;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }*/

  static List<Plant> addedToDropPlants(){
    List<Plant> _selectedPlants = Plant.home;
    return _selectedPlants.where((element) => element.isSelected == true).toList();
  }
}