import 'package:meta/meta.dart';

class AppDevModel {
  final String link;
  final String head;
  final String image;
  final String about;
  final String alt;
  final String label;

  const AppDevModel({
    required this.link,
    required this.head,
    required this.image,
    required this.about,
    required this.alt,
    required this.label,
  });
  static AppDevModel fromJson(Map<String, dynamic> json) {
    return AppDevModel(
      link: json['link'],
      head: json['head'],
      image: json['image'],
      about: json['about'],
      alt: json['alt'],
      label: json['label'],
    );
  }
}
