import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trail_poland/data/data.dart';
import 'package:trail_poland/screens/screens.dart';
import 'package:trail_poland/services/services.dart';
import 'package:trail_poland/widgets/widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preference = await SharedPreferences.getInstance();
  final PreferenceService preferenceService = PreferenceService(preference);
  bool initScreen = preferenceService.getIsFirstEntry();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
  ));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(
    ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return TrainPolandApp(
          preferences: preference,
          initScreen: initScreen,
        );
      },
    ),
  );
}

class TrainPolandApp extends StatefulWidget {
  const TrainPolandApp({
    super.key,
    required this.preferences,
    required this.initScreen,
  });
  final SharedPreferences preferences;
  final bool initScreen;

  @override
  State<TrainPolandApp> createState() => _TrainPolandAppState();
}

class _TrainPolandAppState extends State<TrainPolandApp> {
  late GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = GoRouter(
      initialLocation: '/splash_screen',
      routes: [
        GoRoute(
          path: '/splash_screen',
          pageBuilder: (context, state) {
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: SplashScreen(initScreen: widget.initScreen),
            );
          },
        ),
        GoRoute(
          path: '/onboarding_screen',
          pageBuilder: (context, state) {
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: const OnboardingScreen(),
            );
          },
        ),
        GoRoute(
          path: '/premium_screen',
          pageBuilder: (context, state) {
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: const PremiumScreen(),
            );
          },
        ),
        ShellRoute(
          pageBuilder: (context, state, child) {
            final bool hasBottomBar = (state.fullPath != '/place_info' &&
                state.fullPath != '/routes/routes_info' &&
                state.fullPath != '/quiz/game' &&
                state.fullPath != '/quiz/game/finish_game' &&
                state.fullPath != '/picker/number_seats' &&
                state.fullPath != '/picker/number_seats/pick_place');
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: BottomNavigation(
                currentPath: state.fullPath ?? '/',
                hasBottomBar: hasBottomBar,
                child: child,
              ),
            );
          },
          routes: [
            GoRoute(
                path: tapBarItems[0].path,
                pageBuilder: (context, state) {
                  return buildPageWithDefaultTransition(
                    context: context,
                    state: state,
                    child: const ExploreScreen(),
                  );
                },
                routes: [
                  GoRoute(
                    path: 'place_info',
                    pageBuilder: (context, state) {
                      return buildPageWithDefaultTransition(
                        context: context,
                        state: state,
                        child: PlaceInfoScreen(),
                      );
                    },
                  ),
                ]),
            GoRoute(
              path: tapBarItems[1].path,
              pageBuilder: (context, state) {
                return buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: const RoutesScreen(),
                );
              },
              routes: [
                GoRoute(
                  path: 'routes_info',
                  pageBuilder: (context, state) {
                    return buildPageWithDefaultTransition(
                      context: context,
                      state: state,
                      child: const RouteInfoScreen(),
                    );
                  },
                ),
              ],
            ),
            GoRoute(
                path: tapBarItems[2].path,
                pageBuilder: (context, state) {
                  return buildPageWithDefaultTransition(
                    context: context,
                    state: state,
                    child: const QuizScreen(),
                  );
                },
                routes: [
                  GoRoute(
                      path: 'game',
                      pageBuilder: (context, state) {
                        return buildPageWithDefaultTransition(
                          context: context,
                          state: state,
                          child: const GameScreen(),
                        );
                      },
                      routes: [
                        GoRoute(
                          path: 'finish_game',
                          pageBuilder: (context, state) {
                            return buildPageWithDefaultTransition(
                              context: context,
                              state: state,
                              child: const FinishGameScreen(),
                            );
                          },
                        ),
                      ]),
                ]),
            GoRoute(
                path: tapBarItems[3].path,
                pageBuilder: (context, state) {
                  return buildPageWithDefaultTransition(
                    context: context,
                    state: state,
                    child: const PickerScreen(),
                  );
                },
                routes: [
                  GoRoute(
                      path: 'number_seats',
                      pageBuilder: (context, state) {
                        return buildPageWithDefaultTransition(
                          context: context,
                          state: state,
                          child: const NumberSeatsScreen(),
                        );
                      },
                      routes: [
                        GoRoute(
                          path: 'pick_place',
                          pageBuilder: (context, state) {
                            return buildPageWithDefaultTransition(
                              context: context,
                              state: state,
                              child: const PickPlaceScreen(),
                            );
                          },
                        ),
                      ]),
                ]),
            GoRoute(
              path: tapBarItems[4].path,
              pageBuilder: (context, state) {
                return buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: const SettingsScreen(),
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (BuildContext context) =>
              PreferenceService(widget.preferences),
        ),
      ],
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          theme: ThemeData(fontFamily: 'Poppins'),
          debugShowCheckedModeBanner: false,
          routerConfig: _router,
        );
      },
    );
  }
}

CustomTransitionPage buildPageWithDefaultTransition({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  bool opaque = true,
}) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionDuration: Duration.zero,
    opaque: opaque,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
