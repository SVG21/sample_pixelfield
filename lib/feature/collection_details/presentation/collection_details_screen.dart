import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_pixelfield/feature/collection_details/presentation/widgets/collection_details_body.dart';
import 'package:sample_pixelfield/ui_kit/app_background.dart';

@RoutePage()
class CollectionDetailScreen extends StatefulWidget {
  const CollectionDetailScreen({super.key});

  @override
  CollectionDetailScreenState createState() => CollectionDetailScreenState();
}

class CollectionDetailScreenState extends State<CollectionDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBackground(),
          CollectionDetailsBody(),
        ],
      ),
    );
  }
}
