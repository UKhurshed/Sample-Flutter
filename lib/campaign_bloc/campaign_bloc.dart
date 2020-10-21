import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fluttersample/models/campaign_data.dart';
import 'package:fluttersample/repository/feed_data_provider.dart';
import 'package:meta/meta.dart';

part 'campaign_event.dart';
part 'campaign_state.dart';

class CampaignBloc extends Bloc<CampaignEvent, CampaignState> {
  final FeedDataProvider feedDataProvider;
  CampaignBloc(this.feedDataProvider) : super(CampaignInitial());

  @override
  Stream<CampaignState> mapEventToState(
    CampaignEvent event,
  ) async* {
      try{
        if(event is CampaignGetItem){
          yield CampaignInitial();
          final result = await feedDataProvider.downCampaign();
          yield CampaignLoaded(result);
        }
      }catch(error){

      }
  }
}
