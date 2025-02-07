import 'package:equatable/equatable.dart';

abstract class CollectionDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

// Fetch bottles based on type (opened/unopened)
class FetchCollectionDetails extends CollectionDetailsEvent {
  final String bottleType;

  FetchCollectionDetails({required this.bottleType});

  @override
  List<Object?> get props => [bottleType];
}
