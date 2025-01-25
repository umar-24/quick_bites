import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final Widget? leading; 
  final String? title;
  final Widget? trailing;
  final void Function()? onTap;
  const MyListTile({
    super.key, this.leading, this.title, this.trailing, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: leading,
      title: Text(title!),
      trailing: trailing,
    );
  }
}