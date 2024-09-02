import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class ElevatedLoadingButton extends StatelessWidget {
  const ElevatedLoadingButton({super.key, required this.isLoading, this.onPressed, required this.child});

  final bool isLoading;
  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) => ElevatedButton(
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
  name: 'ElevatedLoadingButton Loading State',
  type: ElevatedLoadingButton,
)
ElevatedLoadingButton loadingButtonLoading(
  BuildContext context,
) =>
    const ElevatedLoadingButton(
      isLoading: true,
      child: Text('loaded'),
    );

@widgetbook.UseCase(
  name: 'ElevatedLoadingButton Loaded State',
  type: ElevatedLoadingButton,
)
ElevatedLoadingButton loadingButtonLoaded(
  BuildContext context,
) =>
    const ElevatedLoadingButton(
      isLoading: false,
      child: Text('loaded'),
    );
