class Cafe{
  final int petc_id;
  final String petc_name;
  final String petc_type;
  final String petc_info;
  final String petc_open;
  final String petc_phone_num;
  final String petc_image;
  final String petc_location;
  final double petc_latitude;
  final double petc_longitude;



  const Cafe({
    required this.petc_id,
    required this.petc_name,
    required this.petc_type,
    required this.petc_info,
    required this.petc_open,
    required this.petc_phone_num,
    required this.petc_image,
    required this.petc_location,
    required this.petc_latitude,
    required this.petc_longitude,
    } 
  ); 

  factory Cafe.fromJson(Map<String, dynamic> json) => Cafe(
        petc_id: json['petc_id'],
        petc_name: json['petc_name'],
        petc_type: json['petc_type'],
        petc_info: json['petc_info'],
        petc_open: json['petc_open'],
        petc_phone_num: json['petc_phone_num'],
        petc_image: json['petc_image'],
        petc_location: json['petc_location'],
        petc_latitude: json['petc_latitude'],
        petc_longitude: json['petc_longitude'],
      );

  Map<String, dynamic> toJson() => {
        'petc_id': petc_id,
        'petc_name': petc_name,
        'petc_type': petc_type,
        'petc_info': petc_info,
        'petc_open': petc_open,
        'petc_phone_num': petc_phone_num,
        'petc_image': petc_image,
        'petc_location': petc_location,
        'petc_latitude': petc_latitude,
        'petc_longitude': petc_longitude,
      };
}