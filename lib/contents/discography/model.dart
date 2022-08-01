class DiscographyModel {
  final List<CarrierModel> carrier;
  final String name;
  final String order;

  DiscographyModel({
    required this.carrier,
    required this.name,
    required this.order,
  });

  factory DiscographyModel.fromJson(Map<String, dynamic> data) {
    final carriers = data['career'].cast<Map<String, dynamic>>()
        as List<Map<String, dynamic>>;
    return DiscographyModel(
      carrier:
          carriers.map((carrier) => CarrierModel.fromJson(carrier)).toList(),
      name: data['name'],
      order: data['order'].toString(),
    );
  }
}

class CarrierModel {
  final String from;
  final String overview;
  final String position;
  final List<String> skills;
  final String to;

  CarrierModel({
    required this.from,
    required this.overview,
    required this.position,
    required this.skills,
    required this.to,
  });

  factory CarrierModel.fromJson(Map<String, dynamic> data) {
    return CarrierModel(
      from: data['from'].toString(),
      overview: data['overview'],
      position: data['position'],
      skills: data['skills'].cast<String>() as List<String>,
      to: data['to'].toString(),
    );
  }
}
