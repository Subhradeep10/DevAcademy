import 'package:meta/meta.dart';

class ToolkitsModel {
  final String link;
  final String head;
  final String image;
  final String about;
  final String alt;
  final String label;

  const ToolkitsModel({
    required this.link,
    required this.head,
    required this.image,
    required this.about,
    required this.alt,
    required this.label,
  });
  static ToolkitsModel fromJson(Map<String, dynamic> json) {
    return ToolkitsModel(
      link: json['link'],
      head: json['head'],
      image: json['image'],
      about: json['about'],
      alt: json['alt'],
      label: json['label'],
    );
  }
}
