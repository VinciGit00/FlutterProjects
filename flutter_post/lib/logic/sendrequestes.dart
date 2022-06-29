import 'package:http/http.dart';
import 'package:flutter_post/object/request.dart';
import 'package:flutter_post/object/getResponse.dart';
import 'package:http/http.dart' as http;

import '../object/PostResponse.dart';
//Logic of the app

/// Functions
Future<GetResponse> getData(RequestToSend R) async {
  var response = await http.get(
    Uri.parse(
      R.link,
    ),
    headers: {R.headerName: R.header},
  );
  if (response.statusCode == 200) {
  } else {}
  return GetResponse(response.statusCode.toString(), response.body);
}

Future<PostResp> postData(RequestToSend R) async {
  var response = await http.post(
      Uri.parse(
        R.link,
      ),
      headers: {R.headerName: R.header},
      body: R.body);
  if (response.statusCode == 200) {
  } else {}
  return PostResp(response.statusCode.toString(), response.body);
}
