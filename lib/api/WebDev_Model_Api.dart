import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dev_academy/Model/Web_Dev_Model.dart';

class WebDevModelApi {
  static Future<List<WebDevModel>> getUserLocallly(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data =
        await assetBundle.loadString('assets/Data/Web_Development_data.json');
    final body = json.decode(data);

    return body.map<WebDevModel>(WebDevModel.fromJson).toList();
  }
}
