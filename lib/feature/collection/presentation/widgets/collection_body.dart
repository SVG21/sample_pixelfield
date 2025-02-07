import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_pixelfield/feature/collection/presentation/bloc/collection_bloc.dart';
import 'package:sample_pixelfield/feature/collection/presentation/bloc/collection_state.dart';
import 'package:sample_pixelfield/feature/collection/presentation/widgets/collection_item.dart';
import 'package:sample_pixelfield/routes/app_router.dart';
import 'package:sample_pixelfield/theme/app_colors.dart';

class CollectionBody extends StatelessWidget {
  const CollectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<CollectionBloc, CollectionState>(
        builder: (context, state) {
          if (state is CollectionLoading) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.commonWhite,
              ),
            );
          } else if (state is CollectionError) {
            return Center(
              child: Text(state.message),
            );
          } else if (state is CollectionLoaded) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: state.collections.map((item) {
                      return Container(
                        width: (MediaQuery.of(context).size.width - 64) / 2,
                        decoration: BoxDecoration(
                          color: AppColors.itemBackgroundColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: GestureDetector(
                          onTap: () =>
                              context.router.push(CollectionDetailRoute()),
                          child: CollectionItem(
                            model: item,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
