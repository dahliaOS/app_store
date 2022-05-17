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

class ChipButton extends StatefulWidget {
  final String name;
  final IconData icon;

  const ChipButton({
    required this.name,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  State<ChipButton> createState() => _ChipButtonState();
}

class _ChipButtonState extends State<ChipButton> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 80),
      child: ChoiceChip(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        label: Text(widget.name),
        avatar: Icon(
          widget.icon,
          size: 20,
          color: _isSelected ? Colors.white : Theme.of(context).iconTheme.color,
        ),
        labelPadding: Theme.of(context).chipTheme.labelPadding,
        elevation: Theme.of(context).chipTheme.elevation,
        backgroundColor: Theme.of(context).chipTheme.backgroundColor,
        labelStyle: Theme.of(context).textTheme.subtitle2,
        pressElevation: Theme.of(context).chipTheme.pressElevation,
        selectedColor: Theme.of(context).chipTheme.selectedColor,
        onSelected: (value) {
          setState(() {
            _isSelected = value;
          });
        },
        selected: _isSelected,
      ),
    );
  }
}
