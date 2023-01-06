import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:path/path.dart';


class ApiHelper {
  String url = 'http://flutter.noviindus.co.in/api/';
  void getbanners() async {
    var client = http.Client();
    try {
      final response =
          await client.get(Uri.parse(url + '/Products/HomeProducts'));

      final json = jsonDecode(response.body);

    } finally {
      client.close();
    }
  }

  void getFeaturedProducts() async {
    var client = http.Client();
    try {
      final header = {'vendorUrlKey': 'kmshoppy'};

      final response = await client.get(
          Uri.parse('${url}/FeaturedProduct?custId=&guestId='),
          headers: header);

      final json = jsonDecode(response.body);


    } finally {
      client.close();
    }
  }

  void getProductDetails({String? urlkey}) async {
    var client = http.Client();
    try {
      final header = {'vendorUrlKey': 'kmshoppy'};

      final response = await client.get(
          Uri.parse(
              '${url}/ProductDetails?urlKey=${urlkey ?? 'greenchef-lpg-stove-glass-top-crystal-3-burner'}&custId='
              '&guestId=4653631114&pincode=kmshoppy&vendorUrlKey=kmshoppy'),
          headers: header);

      final json = jsonDecode(response.body);


    } finally {
      client.close();
    }
  }
}
