import 'package:banking_dashboard/imports.dart';

class HomeActionButtons extends StatelessWidget {
  const HomeActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
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
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                ColorUtils.dashButtonColor,
              ),
            ),
            icon: Icon(Icons.add, color: Colors.white, size: 32),
          ),
          24.w,
          IconButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                ColorUtils.dashButtonColor,
              ),
            ),
            icon: Assets.svg.reload.svg(color: Colors.white),
          ),
          24.w,
        ],
      ),
    );
  }
}
