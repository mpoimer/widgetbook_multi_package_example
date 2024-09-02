import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class OutlinedLoadingButton extends StatelessWidget {
  const OutlinedLoadingButton({super.key, required this.isLoading, this.onPressed, required this.child});

  final bool isLoading;
  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) => OutlinedButton(
        onPressed: !isLoading ? onPressed : null,
        child: isLoading
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator.adaptive(strokeWidth: 2),
              )
            : child,
      );
}

@widgetbook.UseCase(
  name: 'OutlinedLoadingButton Loaded State',
  type: OutlinedLoadingButton,
)
Center outlinedLoadingButtonLoaded(
  BuildContext context,
) =>
    Center(
      child: OutlinedLoadingButton(
        onPressed: context.knobs.boolean(label: 'Enabled/disabled') ? () {} : null,
        isLoading: context.knobs.boolean(
          label: 'Loading on/off',
          initialValue: false,
        ),
        child: const Text('some label'),
      ),
    );
