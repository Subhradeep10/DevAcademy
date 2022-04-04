class WebDevModel {
  String? link;
  String? head;
  String? image;
  String? about;
  String? alt;
  String? label;

  WebDevModel({
    this.link,
    this.head,
    this.image,
    this.about,
    this.alt,
    this.label,
  });
  WebDevModel.fromJson(Map<String, dynamic> json) {
    link = json['link'];
    head = json['head'];
    image = json['image'];
    about = json['about'];
    alt = json['alt'];
    label = json['label'];
  }
}
