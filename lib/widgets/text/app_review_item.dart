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

class ReviewItem extends StatelessWidget {
  const ReviewItem({
    required this.name,
    required this.comment,
    required this.rating,
    super.key,
  });

  final String name;
  final String comment;
  final int rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      height: 60,
      margin: const EdgeInsets.only(right: 10, bottom: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.person,
            color: Theme.of(context).iconTheme.color,
            size: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Wrap(
            direction: Axis.vertical,
            spacing: 1,
            children: <Widget>[
              Text(
                name,
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                comment,
                style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: Theme.of(context).textTheme.subtitle2!.color,
                    ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    rating.toString(),
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: Theme.of(context).textTheme.subtitle2!.color,
                        ),
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
