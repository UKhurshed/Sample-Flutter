part of 'campaign_bloc.dart';

@immutable
abstract class CampaignState {
  const CampaignState();
}

class CampaignInitial extends CampaignState {
  const CampaignInitial();
}

class CampaignError extends CampaignState{
  const CampaignError();
}

class CampaignLoaded extends CampaignState{
  const CampaignLoaded(this.result);

  final List<Result> result;
}


