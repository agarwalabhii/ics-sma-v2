import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef OnPressFunc = void Function();

abstract class CustomButton extends ConsumerWidget {
  final OnPressFunc? onPressed;
  final bool enabled;

  const CustomButton({this.onPressed, this.enabled = true, Key? key})
      : super(key: key);
}

class CustomOutlinedButton extends CustomButton {
  final String text;

  const CustomOutlinedButton(
      {Key? key, required this.text, super.onPressed, super.enabled})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton(
      onPressed: super.enabled ? onPressed : null,
      child: Text(text),
    );
  }
}

class CustomIconButton extends CustomButton {
  final Icon icon;

  const CustomIconButton(
      {Key? key, required this.icon, super.onPressed, super.enabled})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: super.enabled ? onPressed : null,
      icon: icon,
    );
  }
}

class CustomElevatedButton extends CustomButton {
  final String text;

  const CustomElevatedButton(
      {Key? key, required this.text, super.onPressed, super.enabled})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.blue,
      ),
      onPressed: super.enabled ? onPressed : null,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
