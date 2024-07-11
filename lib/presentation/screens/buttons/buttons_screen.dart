import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreens extends StatelessWidget {
  const ButtonScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () => context.pop(),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Wrap(spacing: 10, alignment: WrapAlignment.center, children: [
            ElevatedButton(
                onPressed: () {}, child: const Text('Elevated Button')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated Button')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_outlined),
                label: const Text('Elevated Icon')),
            FilledButton(onPressed: () {}, child: const Text('Fillet Button')),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_outlined),
                label: const Text('Elevated Icon')),
            OutlinedButton(
                onPressed: () {}, child: const Text('Outlined Button')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_outlined),
                label: const Text('Elevated Icon')),
            TextButton(onPressed: () {}, child: const Text('Text Button')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_outlined),
                label: const Text('Text Icon')),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.access_alarm_outlined)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_outlined),
            ),
          ])),
    );
  }
}