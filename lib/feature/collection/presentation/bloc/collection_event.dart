import 'package:equatable/equatable.dart';

abstract class CollectionEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchCollection extends CollectionEvent {}
