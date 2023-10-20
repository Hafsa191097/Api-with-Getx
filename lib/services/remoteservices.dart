import 'dart:developer';

import 'package:http/http.dart' as http;

import '../models/modellist.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Images>?> fetchproducts() async{
    var responce =await client.get(Uri.parse('https://6532b00cd80bd20280f5eac3.mockapi.io/api/images/images'));
    if(responce.statusCode == 200){
      var jsonString = responce.body;
      return imagesFromJson(jsonString);
    }else{
      log("Data not found");
    }
  }
}