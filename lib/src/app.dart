import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:rbc_control/src/core/routes/app_router.dart";

class App extends StatelessWidget {
  const App({super.key});

  static void run() => runApp(
        // const App(),
        const ProviderScope(
          child: App(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return  MaterialApp.router(
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}
