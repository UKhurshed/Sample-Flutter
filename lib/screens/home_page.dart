import 'package:flutter/material.dart';
import 'package:fluttersample/repository/feed_data_provider.dart';
import 'package:fluttersample/screens/campaign_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campaign'),
      ),
      body: CampaignScreen(FeedDataProvider()),
    );
  }
}
