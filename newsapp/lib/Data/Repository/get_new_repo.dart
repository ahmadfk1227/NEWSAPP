import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:newsapp/Data/Models/get_news_model.dart';


class GetNewsRepo {
  Future<GetNewsModel?> getNews() async {
    try {
      var response = await http.get(
        Uri.parse(
            "https://newsapi.org/v2/everything?q=bitcoin&apiKey=b709cebc1e6f4611b10d97170e487b7e"),
      );

      var decodedResponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        GetNewsModel myResponse = GetNewsModel.fromJson(decodedResponse);

        return myResponse;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }
}