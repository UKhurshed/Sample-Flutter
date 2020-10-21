import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../models/campaign_data.dart';

class FeedDataProvider {
  FeedDataProvider();

  Future<List<Result>> downCampaign() async {
    String campaignUrl =
        'http://3.13.174.144/api/campaign/list/?since=0&next20';
    var token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHBpcmVzX2F0IjoiMTYwMTY2MjA0NyIsImlkIjo3LCJuYW1lIjoiZmlyc3RfbmFtZSB0bWlkZGxlX25hbWUgbGFzdF9uYW1lIn0.txiiTxHcUddKDSF5zjjLEOOXdIvP9FVceJzndiD5t64'";
    List<Result> resultList = [];
    Response response = await Dio().get(campaignUrl,
        options: Options(
            headers: {HttpHeaders.authorizationHeader: 'Bearer $token'}));
    if(response.statusCode == 200){
      print(response.data);
      resultList = Campaign.fromJson(response.data).result;
      return resultList;
    }else{
      print(response.data);
      throw Exception(response.data);
    }
    // String campaignUrl = 'http://3.13.174.144/api/campaign/list/?since=0&next20';
    // var token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHBpcmVzX2F0IjoiMTYwMTY2MjA0NyIsImlkIjo3LCJuYW1lIjoiZmlyc3RfbmFtZSB0bWlkZGxlX25hbWUgbGFzdF9uYW1lIn0.txiiTxHcUddKDSF5zjjLEOOXdIvP9FVceJzndiD5t64'";
    // final http.Response response = await http.get(campaignUrl,
    //     headers: {HttpHeaders.authorizationHeader: 'Bearer $token'});
    //
    // if (response.statusCode == 200) {
    //   print(response.body);
    //   return jsonDecode(response.body);
    // }
    // else {
    //   print(jsonDecode(response.body));
    //   throw Exception(json.decode(response.body));
    // }
  }
}