void main() {
  print('Simple Location Class Example');
  print('----------------------');
  //class location example
  Location locat = Location(lat: 1, long: 2);
  print(locat.lat);
  print(locat.long);
  print(locat);

  print('\n');
  print('Simple Location Records Example');
  print('----------------------');
  //instead of declaring a class we can instead declare a record
  final loc = location();
  print(loc.latitude);
  print(loc.longitude);
  print(loc);
}

///location record
({int latitude, int longitude}) location() {
  return (latitude: 1, longitude: 2);
}

///location class
class Location {
  final int lat;
  final int long;

  Location({
    required this.lat,
    required this.long,
  });

  @override
  String toString() {
    return 'Location{lat: $lat, long: $long}';
  }
}
