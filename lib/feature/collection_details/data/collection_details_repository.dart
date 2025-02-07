import 'package:sample_pixelfield/commons/app_assets.dart';
import 'package:sample_pixelfield/feature/collection_details/data/collection_details_model.dart';

class CollectionDetailsRepository {
  static final List<CollectionDetailsModel> unopenedBottles = [
    CollectionDetailsModel(
      bottleImage: AppAssets.images.whiskeyOneCask,
      bottleID: '135/184',
      bottleName: 'Talisker',
      bottleAge: '18 Year old',
      bottleNumber: '#2504',
      distilleryName: 'Distillery A',
      regionName: 'Region A',
      countryName: 'Scotland',
      type: 'Whiskey',
      ageStatement: '18 years',
      filled: '1995',
      bottled: '2013',
      caskNumber: 'Cask 420',
      abc: '45.6%',
      size: '750ml',
      finish: 'Sherry Oak',
    ),
  ];

  static final List<CollectionDetailsModel> openedBottles = [
    CollectionDetailsModel(
      bottleImage: AppAssets.images.whiskeyOneCask,
      bottleID: '200/300',
      bottleName: 'Macallan',
      bottleAge: '12 Year old',
      bottleNumber: '#1020',
      distilleryName: 'Distillery B',
      regionName: 'Region B',
      countryName: 'Ireland',
      type: 'Whiskey',
      ageStatement: '12 years',
      filled: '2009',
      bottled: '2021',
      caskNumber: 'Cask 315',
      abc: '40.0%',
      size: '750ml',
      finish: 'Bourbon Oak',
    ),
  ];
}
