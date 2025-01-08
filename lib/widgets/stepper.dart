import 'package:flutter/material.dart';

class StepperScreen extends StatelessWidget {
  const StepperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stepper Showcase"),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text("Stepper - Default"),
                  const SizedBox(height: 8),
                  Stepper(
                    steps: [
                      Step(title: Text('Step 1'), content: Text('Content for Step 1')),
                      Step(title: Text('Step 2'), content: Text('Content for Step 2')),
                      Step(title: Text('Step 3'), content: Text('Content for Step 3')),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text("Stepper - Vertical"),
                  const SizedBox(height: 8),
                  Stepper(
                    type: StepperType.vertical,
                    steps: [
                      Step(title: Text('Step 1'), content: Text('Content for Step 1')),
                      Step(title: Text('Step 2'), content: Text('Content for Step 2')),
                      Step(title: Text('Step 3'), content: Text('Content for Step 3')),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text("Stepper - With Controls Builder"),
                  const SizedBox(height: 8),
                  Stepper(
                    controlsBuilder: (context, details) {
                      return Row(
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: details.onStepContinue,
                            child: const Text('Continue'),
                          ),
                          const SizedBox(width: 10),
                          if (details.stepIndex > 0)
                            ElevatedButton(
                              onPressed: details.onStepCancel,
                              child: const Text('Back'),
                            ),
                        ],
                      );
                    },
                    steps: const [
                      Step(title: Text('Step 1'), content: Text('Content for Step 1')),
                      Step(title: Text('Step 2'), content: Text('Content for Step 2')),
                      Step(title: Text('Step 3'), content: Text('Content for Step 3')),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text("Stepper - With Custom Colors"),
                  const SizedBox(height: 8),
                  Stepper(
                      steps: const [
                        Step(title: Text('Step 1'), content: Text('Content for Step 1')),
                        Step(title: Text('Step 2'), content: Text('Content for Step 2')),
                        Step(title: Text('Step 3'), content: Text('Content for Step 3')),
                      ],
                      currentStep: 1,
                      controlsBuilder: (context, details) {
                        return Row(
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: details.onStepContinue,
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                              child: const Text('Continue', style: TextStyle(color: Colors.white)),
                            ),
                            const SizedBox(width: 10),
                            if (details.stepIndex > 0)
                              ElevatedButton(
                                onPressed: details.onStepCancel,
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                                child: const Text('Back', style: TextStyle(color: Colors.white)),
                              ),
                          ],
                        );
                      })
                ]))));
  }
}
