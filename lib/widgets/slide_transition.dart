import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SlideTransitionScreen extends StatelessWidget {
  const SlideTransitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SlideTransition Showcase"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("SlideTransition - Basic", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _buildSlideTransitionBasic(),
              SizedBox(height: 20),
              Text("SlideTransition - Offset Animation",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _buildSlideTransitionOffsetAnimation(),
              SizedBox(height: 20),
              Text("SlideTransition - Different Alignment",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _buildSlideTransitionDifferentAlignment(),
              SizedBox(height: 20),
              Text("SlideTransition - With Container",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              _buildSlideTransitionWithContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSlideTransitionBasic() {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(1.0, 0.0),
      ).animate(
        CurvedAnimation(
          parent: AnimationController(
            duration: const Duration(seconds: 1),
            vsync: TickerProviderImpl(),
          )..forward(),
          curve: Curves.ease,
        ),
      ),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
        child: Center(child: Text("Slide Me", style: TextStyle(color: Colors.white))),
      ),
    );
  }

  Widget _buildSlideTransitionOffsetAnimation() {
    final AnimationController controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: TickerProviderImpl(),
    )..forward();

    final Animation<Offset> offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.5, 0.5),
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.elasticIn,
    ));

    return SlideTransition(
      position: offsetAnimation,
      child: Container(
        width: 80,
        height: 80,
        color: Colors.green,
        child: Center(child: Text("Slide", style: TextStyle(color: Colors.white))),
      ),
    );
  }

  Widget _buildSlideTransitionDifferentAlignment() {
    final AnimationController controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: TickerProviderImpl(),
    )..forward();

    final Animation<Offset> offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-0.5, 0.0),
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
    ));

    return Align(
      alignment: Alignment.centerRight,
      child: SlideTransition(
        position: offsetAnimation,
        child: Container(
          width: 60,
          height: 60,
          color: Colors.orange,
          child: Center(child: Text("Slide", style: TextStyle(color: Colors.white))),
        ),
      ),
    );
  }

  Widget _buildSlideTransitionWithContainer() {
    final AnimationController controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: TickerProviderImpl(),
    )..forward();

    final Animation<Offset> offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.0, 1.0),
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeOut,
    ));

    return SlideTransition(
      position: offsetAnimation,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: Text("Sliding Text"),
      ),
    );
  }
}

class TickerProviderImpl extends TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}
