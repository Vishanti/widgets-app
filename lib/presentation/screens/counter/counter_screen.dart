import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterValue = ref.watch(counterProvider);
    final isDarkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Screen'),
          actions: [
            IconButton(
                onPressed: () {
                  ref.read(isDarkModeProvider.notifier).state = !ref.read(isDarkModeProvider.notifier).state;
                },
                icon: isDarkMode
                    ? const Icon(Icons.light_mode_outlined)
                    : const Icon(Icons.dark_mode_outlined))
          ],
        ),
        body: Center(
          child: Text(
            'Valor $counterValue',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            ref.read(counterProvider.notifier).state++;
            // Otra manera de poder hacer la suma al valor del provider
            // ref.read(counterProvider.notifier).update((state) => state + 1);
          },
        ));
  }
}
