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

import 'package:app_store/widgets/cards/app_item.dart';
import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: MaterialLocalizations.of(context).backButtonTooltip,
        ),
        title: const Text(
          'App page',
        ),
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 40,
              left: 40,
              top: 30,
              bottom: 30,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 140,
                      width: 140,
                      child: Card(),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 7,
                      children: <Widget>[
                        Text(
                          'Application',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Text(
                          'Description',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          'Category',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              child: SizedBox(
                                height: 300,
                                width: 400,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    right: 10,
                                    bottom: 10,
                                    top: 30,
                                    left: 30,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Are you sure you want to install?',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1,
                                        overflow: TextOverflow.clip,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'This application can do unspeakable things to you while you sleep. But possibly worst of all, its developer does not know much about the application he built himself. May God save us.',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                        overflow: TextOverflow.clip,
                                      ),
                                      const Spacer(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text('Yes'),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text('No'),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.download,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Download',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              backgroundColor:
                                  Theme.of(context).dialogTheme.backgroundColor,
                              child: SizedBox(
                                height: 300,
                                width: 400,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    right: 10,
                                    bottom: 10,
                                    top: 30,
                                    left: 30,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Donate to application developer',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1,
                                        overflow: TextOverflow.clip,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'If you wish to support the development of the application, please click on the donations links below where you can donate an amount you wish.',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                        overflow: TextOverflow.clip,
                                      ),
                                      const Spacer(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text(
                                              'Open Collective',
                                              overflow: TextOverflow.visible,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text('PayPal'),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text('Close'),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.payment,
                            color: Colors.deepOrange,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Donate',
                            style: TextStyle(color: Colors.deepOrange),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Tooltip(
                      message: 'Developer',
                      preferBelow: false,
                      verticalOffset: 35,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 60,
                            width: 60,
                            child: Card(
                              child: Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Marin Heđeš',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                    Tooltip(
                      message: 'Technology',
                      preferBelow: false,
                      verticalOffset: 35,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 60,
                            width: 60,
                            child: Card(
                              child: Icon(Icons.code),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Flutter, Dart',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                    Tooltip(
                      message: 'Trending position',
                      preferBelow: false,
                      verticalOffset: 35,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 60,
                            width: 60,
                            child: Card(
                              child: Icon(Icons.leaderboard),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '#1',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                    Tooltip(
                      message: 'Language',
                      preferBelow: false,
                      verticalOffset: 35,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 60,
                            width: 60,
                            child: Card(
                              child: Icon(Icons.language),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'English',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                    Tooltip(
                      message: 'Size on disk',
                      preferBelow: false,
                      verticalOffset: 35,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 60,
                            width: 60,
                            child: Card(
                              child: Icon(Icons.sd_storage),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '20MB',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                    Tooltip(
                      message: 'Source',
                      preferBelow: false,
                      verticalOffset: 35,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 60,
                            width: 60,
                            child: Card(
                              child: Icon(Icons.source),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'FOSS',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                    Tooltip(
                      message: 'Age appropriateness',
                      preferBelow: false,
                      verticalOffset: 35,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 60,
                            width: 60,
                            child: Card(
                              child: Icon(Icons.child_care),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '12+',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(Icons.description),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Information',
                          style: Theme.of(context).textTheme.headline2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Insert application description here.',
                      style: Theme.of(context).textTheme.subtitle2,
                      overflow: TextOverflow.clip,
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(Icons.image),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Images',
                          style: Theme.of(context).textTheme.headline2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GridView.count(
                      childAspectRatio: 1.25,
                      primary: false,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 4,
                      shrinkWrap: true,
                      children: const <Widget>[
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Card(),
                        ),
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Card(),
                        ),
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Card(),
                        ),
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Card(),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(Icons.reviews),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Reviews',
                          style: Theme.of(context).textTheme.headline2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
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
                                  'Marin Heđeš',
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                Text(
                                  'Good app.',
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '3',
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
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
                        Row(
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
                                  'Davide Bianco',
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                Text(
                                  'Pog',
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '5',
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
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
                        Row(
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
                                  'Joey Diaz',
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                Text(
                                  'It does something',
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '5',
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
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
                        Row(
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
                                  'Mattia Barbieri',
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                Text(
                                  'Grazie!',
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '4',
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
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
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const Icon(Icons.control_point_duplicate),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Similar applications',
                              style: Theme.of(context).textTheme.headline2,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GridView.count(
                          childAspectRatio: 4,
                          primary: false,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 4,
                          shrinkWrap: true,
                          children: const <Widget>[
                            AppItem(
                              name: 'Application',
                              rating: 5.0,
                              category: ['Tools', 'Development'],
                            ),
                            AppItem(
                              name: 'Application',
                              rating: 5.0,
                              category: ['Tools', 'Development'],
                            ),
                            AppItem(
                              name: 'Application',
                              rating: 5.0,
                              category: ['Tools', 'Development'],
                            ),
                            AppItem(
                              name: 'Application',
                              rating: 5.0,
                              category: ['Tools', 'Development'],
                            ),
                            AppItem(
                              name: 'Application',
                              rating: 5.0,
                              category: ['Tools', 'Development'],
                            ),
                            AppItem(
                              name: 'Application',
                              rating: 5.0,
                              category: ['Tools', 'Development'],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
