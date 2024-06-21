import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/features/home/presentation/screens/responsive_home_sscreen.dart';
import 'package:slash_task/features/home/presentation/viewmodel/cubit/home_state.dart';
import '../../data/data_source/category_data_source.dart';
import '../viewmodel/cubit/home_cubit.dart';
import '../widgets/category_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
create: (context) => HomeCubit(CategoryDataSource())..fetchCategories(),
child: const ResponsiveHomeScreen(),

);
  }
}


// class HomeUI extends StatelessWidget {
//   const HomeUI({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: BlocBuilder<HomeCubit, HomeState>(
//         builder: (context, state) {
//           if (state is HomeLoading) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state is HomeLoaded) {
//             return CategorySection(categories: state.categories);
//           } else if (state is HomeError) {
//             return Center(child: Text(state.message));
//           } else {
//             return Container();
//           }
//         },
//       ),
//     );
//   }
// }



