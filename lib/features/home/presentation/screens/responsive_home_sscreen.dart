import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/features/home/presentation/screens/web_home_ui.dart';
import '../viewmodel/cubit/home_cubit.dart';
import '../viewmodel/cubit/home_state.dart';
import 'mobile_home_ui.dart';

class ResponsiveHomeScreen extends StatelessWidget {
  const ResponsiveHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is HomeLoaded) {
          return LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return MobileHomeUI(categories: state.categories);
              } else {
                return WebHomeUI(categories: state.categories,homeData: state.homeData,);
              }
            },
          );
        } else if (state is HomeError) {
          return Center(child: Text(state.message));
        } else {
          return Container();
        }
      },
    );
  }
}
