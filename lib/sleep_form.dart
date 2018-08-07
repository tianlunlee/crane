// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

import 'colors.dart';

class SleepForm extends StatefulWidget {
  @override
  _SleepFormState createState() => _SleepFormState();
}

class _SleepFormState extends State<SleepForm> {
  final _locationController = TextEditingController();
  final _travelerController = TextEditingController();
  final _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: kCranePurple900,
        child: Column(
          children: <Widget>[
            PrimaryColorOverride(
              color: kCraneBackgroundWhite,
              child: TextField(
                controller: _travelerController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Travelers',
                ),
              ),
            ),
            PrimaryColorOverride(
              color: kCraneBackgroundWhite,
              child: TextField(
                controller: _dateController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Dates',
                ),
              ),
            ),
            PrimaryColorOverride(
              color: kCraneBackgroundWhite,
              child: TextField(
                controller: _locationController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Location',
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}


class PrimaryColorOverride extends StatelessWidget {
  const PrimaryColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      // TODO(tianlun): Change the color of the text theme instead
      data: Theme.of(context).copyWith(primaryColor: color),
    );
  }
}
