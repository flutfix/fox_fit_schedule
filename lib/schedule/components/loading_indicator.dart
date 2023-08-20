import 'package:flutter/material.dart';
import 'package:fox_fit_schedule/schedule/common/layout.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final layout = Layout.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(
          color: layout.theme.primary,
        ),
      ],
    );
  }
}
