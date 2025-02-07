import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_pixelfield/feature/collection_details/data/collection_details_model.dart';
import 'package:sample_pixelfield/feature/collection_details/data/collection_details_repository.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/bloc/collection_details_event.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/bloc/collection_details_state.dart';

class CollectionDetailsBloc
    extends Bloc<CollectionDetailsEvent, CollectionDetailsState> {
  CollectionDetailsBloc() : super(CollectionDetailsInitial()) {
    on<FetchCollectionDetails>((event, emit) async {
      emit(
        CollectionDetailsLoading(),
      );
      try {
        List<CollectionDetailsModel> bottles =
            event.bottleType == "Genuine Bottle (Unopened)"
                ? CollectionDetailsRepository.unopenedBottles
                : CollectionDetailsRepository.openedBottles;

        emit(
          CollectionDetailsLoaded(bottles: bottles),
        );
      } catch (e) {
        emit(
          CollectionDetailsError(message: "Failed to load data"),
        );
      }
    });
  }
}
