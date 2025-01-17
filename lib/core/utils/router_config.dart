import 'package:bmi_calculator/feature/home/presentation/view/home_view.dart';
import 'package:bmi_calculator/feature/result/data/manager/result_cubit/result_cubit.dart';
import 'package:bmi_calculator/feature/result/presentation/view/result_view.dart';
import 'package:bmi_calculator/feature/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouters {
  static const kHomeView = '/HomeView';
  static const kResultView = '/ResultView';
  static final GoRouter routers = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(
      path: '/HomeView',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
        path: '/ResultView',
        builder: (context, state) => BlocProvider(
              create: (context) => ResultCubit()..checkResult(result: state.extra as double),
              child: ResultView(result: state.extra as double),
            )),
  ]);
}
