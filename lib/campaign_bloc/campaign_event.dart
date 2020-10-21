part of 'campaign_bloc.dart';

@immutable
abstract class CampaignEvent {
  const CampaignEvent();
}

class CampaignGetItem extends CampaignEvent{
  const CampaignGetItem();
}
