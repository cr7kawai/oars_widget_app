import 'package:flutter/material.dart';

class ProgresScreen extends StatelessWidget {
  const ProgresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators',),
      ),
      body: _ProgressView()
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('Circular Indicator'),
          CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black12
          ),
          SizedBox(height: 20,),
          Text('Circular Indicator Controlled'),
          _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(microseconds: 3000), (value){
        return (value +2) / 100; //0.0 -1.0 
      }), 
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 2,
                backgroundColor: Colors.black12,
              ),
              const SizedBox(width: 20,),
              Expanded(child: LinearProgressIndicator(value: progressValue))
            ]
          ),
        );
      },
      );
  }
}