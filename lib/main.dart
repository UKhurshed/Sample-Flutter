import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'file:///C:/Users/Khurs/AndroidStudioProjects/flutter_sample/lib/repository/feed_data_provider.dart';
import 'package:fluttersample/models/feed_data.dart';
import 'package:fluttersample/screens/home_page.dart';

import 'models/campaign_data.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pull to Fresh',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
        home: HomePage(),
    );
  }
}

// class CampaignList extends StatefulWidget {
//
//   @override
//   _CampaignListState createState() => _CampaignListState();
// }
//
//   class _CampaignListState extends State<CampaignList> {
//
//     List<Campaign> _campaign = [];
//     List<Campaign> campaignData = [];
//     FeedDataProvider feedDataProvider = FeedDataProvider();
//
//     Future<void> fetchFeed() async{
//       final List<Result> feedResponse = await feedDataProvider.downCampaign();
//       print(feedResponse);
//     }
//
//     String _id(dynamic id) {
//       return id['id'] + ' ' + id['owner']['phone'];
//     }
//
//     String _address(dynamic user) {
//       return user['since'];
//     }
//
//     Widget buildList() {
//       return _campaign.length != 0
//           ? RefreshIndicator(
//           child: ListView.builder(
//               itemCount: _campaign.length,
//               itemBuilder: (BuildContext context, index) {
//                 return Card(
//                   child: Column(
//                     children: [
//                       ListTile(
//                         title: Text(_address(_campaign[index])),
//                       )
//                     ],
//                   ),
//                 );
//               }),
//           onRefresh: _getData) : Center(child: CircularProgressIndicator());
//     }
//
//     Future<void> _getData() async {
//       setState(() {
//         fetchFeed();
//       });
//     }
//
//     @override
//     void initState() {
//       super.initState();
//       fetchFeed();
//     }
//
//     @override
//     Widget build(BuildContext context) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Pull to refresh'),
//         ),
//         body: Container(
//           child: buildList(),
//         ),
//       );
//     }
//   }
