import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_pixelfield/feature/collection/presentation/bloc/collection_bloc.dart';
import 'package:sample_pixelfield/feature/collection/presentation/bloc/collection_event.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/bloc/collection_details_bloc.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/bloc/collection_details_event.dart';
import 'package:sample_pixelfield/routes/app_router.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CollectionBloc()..add(FetchCollection()),
        ),
        BlocProvider(
          create: (_) => CollectionDetailsBloc()
            ..add(
              FetchCollectionDetails(
                bottleType: 'Genuine Bottle (Unopened)',
              ),
            ),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
