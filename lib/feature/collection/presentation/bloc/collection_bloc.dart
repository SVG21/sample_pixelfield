import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_pixelfield/feature/collection/data/collection_repository.dart';
import 'package:sample_pixelfield/feature/collection/presentation/bloc/collection_event.dart';
import 'package:sample_pixelfield/feature/collection/presentation/bloc/collection_state.dart';

class CollectionBloc extends Bloc<CollectionEvent, CollectionState> {
  CollectionBloc() : super(CollectionInitial()) {
    on<FetchCollection>((event, emit) async {
      emit(
        CollectionLoading(),
      );
      try {
        await Future.delayed(
          const Duration(seconds: 1),
        ); // Simulate loading
        emit(
          CollectionLoaded(
            collections: CollectionRepository.collectionItems,
          ),
        );
      } catch (e) {
        emit(
          CollectionError(
            message: "Failed to load collection",
          ),
        );
      }
    });
  }
}
