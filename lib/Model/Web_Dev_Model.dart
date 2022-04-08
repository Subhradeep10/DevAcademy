import 'package:meta/meta.dart';

class WebDevModel {
  final String link;
  final String head;
  final String image;
  final String about;
  final String alt;
  final String label;

  const WebDevModel({
    required this.link,
    required this.head,
    required this.image,
    required this.about,
    required this.alt,
    required this.label,
  });
  static WebDevModel fromJson(Map<String, dynamic> json) {
    return WebDevModel(
      link: json['link'],
      head: json['head'],
      image: json['image'],
      about: json['about'],
      alt: json['alt'],
      label: json['label'],
    );
  }
}
