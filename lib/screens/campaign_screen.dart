import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttersample/campaign_bloc/campaign_bloc.dart';
import 'package:fluttersample/repository/feed_data_provider.dart';

import '../models/campaign_data.dart';

class CampaignScreen extends StatelessWidget {
  final FeedDataProvider feedDataProvider;

  const CampaignScreen(this.feedDataProvider);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CampaignBloc(feedDataProvider),
      child: CampaignList(),
    );
  }
}

class CampaignList extends StatefulWidget {
  @override
  _CampaignListState createState() => _CampaignListState();
}

class _CampaignListState extends State<CampaignList> {
  CampaignBloc _campaignBloc;


  @override
  void initState() {
    _campaignBloc = BlocProvider.of<CampaignBloc>(context);
    _campaignBloc.add(CampaignGetItem());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CampaignBloc, CampaignState>(
        builder: (context, state){
          if(state is CampaignError){
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('Error'),
              backgroundColor: Colors.red,
              duration: Duration(seconds: 2),
            ));
          }
          if(state is CampaignInitial){
            return Center(child: CircularProgressIndicator(),
            );
          }
          if(state is CampaignLoaded){
            return ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: state.result.length,
                itemBuilder: (context, index){
                  Result item = state.result[index];
                  return Container(
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                    ),
                    child: ListTile(
                      leading: Text(item.id.toString()),
                      trailing: Text(item.deliveryAddress.city.toString()),
                      title: Text(item.title),
                    ),
                  );
                }
            );
          }
          return Center(child: CircularProgressIndicator(),);
        }
    );
  }
}

