import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SchedulerBindingScreen extends StatelessWidget {
  const SchedulerBindingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SchedulerBinding Showcase'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "SchedulerBinding - No direct visual representation. It's a framework class."),
              const SizedBox(height: 20),
              const Text("SchedulerBinding - Example of using it to add a post-frame callback:"),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Post-frame callback executed!')),
                    );
                  });
                },
                child: const Text('Trigger Post-Frame Callback'),
              ),
              const SizedBox(height: 20),
              const Text("SchedulerBinding - Example of using it to schedule a task:"),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  WidgetsBinding.instance.scheduleTask(() {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Microtask executed!')),
                    );
                  }, Priority.idle);
                },
                child: const Text('Trigger Microtask'),
              ),
              const SizedBox(height: 20),
              const Text("SchedulerBinding - Example of using it to schedule a frame callback:"),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content:
                              Text('Frame callback executed at ${timeStamp.inMilliseconds} ms!')),
                    );
                  });
                },
                child: const Text('Trigger Frame Callback'),
              ),
              const SizedBox(height: 20),
              const Text("SchedulerBinding - Example of using it to cancel a frame callback:"),
              const SizedBox(height: 10),
              Builder(builder: (context) {
                FrameCallback? callback;
                return Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        callback = (timeStamp) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(
                                    'Frame callback executed at ${timeStamp.inMilliseconds} ms!')),
                          );
                        };
                        WidgetsBinding.instance.addPersistentFrameCallback(callback!);
                      },
                      child: const Text('Add Frame Callback'),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (callback != null) {
                          WidgetsBinding.instance.cancelFrameCallbackWithId(callback.hashCode);
                          callback = null;
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Frame callback cancelled!')),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('No frame callback to cancel!')),
                          );
                        }
                      },
                      child: const Text('Cancel Frame Callback'),
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
