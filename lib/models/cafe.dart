class Cafe{
  // ignore: non_constant_identifier_names
  final int petc_id;
  // ignore: non_constant_identifier_names
  final String petc_name;
  // ignore: non_constant_identifier_names
  final String petc_type;
  // ignore: non_constant_identifier_names
  final String petc_info;
  // ignore: non_constant_identifier_names
  final String petc_open;
  // ignore: non_constant_identifier_names
  final String petc_phone_num;
  // ignore: non_constant_identifier_names
  final String petc_image;
  // ignore: non_constant_identifier_names
  final String petc_location;

  const Cafe({
    // ignore: non_constant_identifier_names
    required this.petc_id,
    // ignore: non_constant_identifier_names
    required this.petc_name,
    // ignore: non_constant_identifier_names
    required this.petc_type,
    // ignore: non_constant_identifier_names
    required this.petc_info,
    // ignore: non_constant_identifier_names
    required this.petc_open,
    // ignore: non_constant_identifier_names
    required this.petc_phone_num,
    // ignore: non_constant_identifier_names
    required this.petc_image,
    // ignore: non_constant_identifier_names
    required this.petc_location,
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
      };
}