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

import 'package:app_store/providers/chip_button_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChipButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ChipButtonProvider _chipprovider =
        Provider.of<ChipButtonProvider>(context);
    final Set<Choice> choiceChipSet = {};
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 10,
      children: Choice.values
          .map(
            (e) => Container(
              constraints: const BoxConstraints(maxHeight: 80),
              child: ChoiceChip(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                label: Text(e.name),
                avatar: Icon(
                  Icons.ac_unit,
                  size: 20,
                  color: e == _chipprovider.get()
                      ? Colors.white
                      : Theme.of(context).iconTheme.color,
                ),
                labelPadding: Theme.of(context).chipTheme.labelPadding,
                elevation: Theme.of(context).chipTheme.elevation,
                backgroundColor: Theme.of(context).chipTheme.backgroundColor,
                labelStyle: Theme.of(context).textTheme.subtitle2,
                pressElevation: Theme.of(context).chipTheme.pressElevation,
                selectedColor: Theme.of(context).chipTheme.selectedColor,
                onSelected: (value) {
                  _chipprovider.setAdd(e, choiceChipSet);
                },
                selected: e == _chipprovider.get(),
              ),
            ),
          )
          .toList(),
    );
  }
}

enum Choice {
  all,
  design,
  games,
  entertainment,
  development,
  music,
  productivity,
  tools,
  finance,
  health,
  education,
  fitness,
  communication,
  business,
}
