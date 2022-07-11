/*
Copyright 2022 The dahliaOS Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    this.icon,
    this.onPressed,
    super.key,
  });

  final IconData? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        color: Theme.of(context).backgroundColor,
        shape: const CircleBorder(),
      ),
      child: IconButton(
        hoverColor: Theme.of(context).hoverColor,
        splashColor: Theme.of(context).primaryColor,
        splashRadius: 20,
        padding: const EdgeInsets.all(10),
        iconSize: 20,
        onPressed: () => onPressed?.call(),
        icon: Icon(
          icon,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
    );
  }
}
