import 'dart:math' as math;

import 'package:banking_dashboard/imports.dart';

class HomeActionButtons extends StackedHookView<HomeViewmodel> {
  const HomeActionButtons({super.key});

  @override
  Widget builder(BuildContext context, model) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          24.w,
          Expanded(
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  ColorUtils.dashButtonColor,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.svg.sendArrow.svg(),
                    12.w,
                    Text('Send', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          24.w,
          IconButton(
            onPressed: () => model.addController.forward(from: 0),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                ColorUtils.dashButtonColor,
              ),
            ),
            icon: AnimatedBuilder(
              animation: model.addController,
              builder: (_, child) {
                return Transform.rotate(
                  angle: model.addController.value * 2 * math.pi,
                  child: child,
                );
              },
              child: Icon(Icons.add, color: Colors.white, size: 32),
            ),
          ),
          24.w,
          IconButton(
            onPressed: () => model.reloadController.forward(from: 0),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                ColorUtils.dashButtonColor,
              ),
            ),
            icon: AnimatedBuilder(
              animation: model.reloadController,
              builder: (_, child) {
                return Transform.rotate(
                  angle: model.reloadController.value * 2 * math.pi,
                  child: child,
                );
              },
              child: Assets.svg.reload.svg(
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcATop),
              ),
            ),
          ),
          24.w,
        ],
      ),
    );
  }
}
