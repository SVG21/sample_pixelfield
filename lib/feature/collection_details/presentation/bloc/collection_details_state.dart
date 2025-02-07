import 'package:equatable/equatable.dart';
import 'package:sample_pixelfield/feature/collection_details/data/collection_details_model.dart';

abstract class CollectionDetailsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CollectionDetailsInitial extends CollectionDetailsState {}

class CollectionDetailsLoading extends CollectionDetailsState {}

class CollectionDetailsLoaded extends CollectionDetailsState {
  final List<CollectionDetailsModel> bottles;

  CollectionDetailsLoaded({required this.bottles});

  @override
  List<Object?> get props => [bottles];
}

class CollectionDetailsError extends CollectionDetailsState {
  final String message;

  CollectionDetailsError({required this.message});

  @override
  List<Object?> get props => [message];
}
