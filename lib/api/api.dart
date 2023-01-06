import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:testapp/model/login.dart';


class ApiHelper {
  String url = 'http://flutter.noviindus.co.in/api/';


  void test()async{




final ref = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY4MDgxMjE1OSwiaWF0IjoxNjczMDM2MTU5LCJqdGkiOiJlZGU4YzVjNGExMzI0YmJiOGFjOTM5YjNkZDRlZTkzOSIsInVzZXJfaWQiOjIsImZpcnN0X25hbWUiOiJhZG1pbl91c2VyIiwidXJsX2lkIjoiRUxHQVM4TiJ9.CC9kXgsjiqol8lAD8XhM7QT_aQfrMpFmn3pMnuxZfl4';

      final response = await http.post(Uri.https(url, 'api/token/refresh/'),
          headers: {'grant_type': 'refresh_token', 'refresh_token': '$ref'});
    final  json = jsonDecode(response.body);
    print(json);


  }
  Future<LoginModel> login({required String username,required String password}) async {

    var client = http.Client();

    try {
      var body = new Map<String, dynamic>();
      body['username'] = username;
      body['password'] = password;


      final response =
      await client.post(Uri.parse(url + 'LoginApi'),body: body);


      final json = jsonDecode(response.body);
      final credential = LoginModel.fromJson(json);
      return credential;

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
