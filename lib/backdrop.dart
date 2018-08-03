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
import 'package:meta/meta.dart';

import 'model/product.dart';
import 'app.dart';
import 'colors.dart';
double _kFlingVelocity = 2.0;

class _FrontLayer extends StatelessWidget {
  const _FrontLayer({
    Key key,
    this.onTap,
    this.child,
  }) : super(key: key);

  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 16.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0)
        ),
      ),
      child: new ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          // TODO(tianlun): Move Cards elsewhere to reduce clutter
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: const Icon(Icons.album),
                  title: const Text('The Enchanted Nightingale'),
                  subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: const Icon(Icons.album),
                  title: const Text('The Enchanted Nightingale'),
                  subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: const Icon(Icons.album),
                  title: const Text('The Enchanted Nightingale'),
                  subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: const Icon(Icons.album),
                  title: const Text('The Enchanted Nightingale'),
                  subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: const Icon(Icons.album),
                  title: const Text('The Enchanted Nightingale'),
                  subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: const Icon(Icons.album),
                  title: const Text('The Enchanted Nightingale'),
                  subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: const Icon(Icons.album),
                  title: const Text('The Enchanted Nightingale'),
                  subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}

class _BackdropTitle extends AnimatedWidget {
  final Function onPress;
  final Widget frontTitle;
  final Widget backTitle;

  const _BackdropTitle({
    Key key,
    Listenable listenable,
    this.onPress,
    @required this.frontTitle,
    @required this.backTitle,
  })  : assert(frontTitle != null),
        assert(backTitle != null),
        super(key: key, listenable: listenable);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = this.listenable;

    return new DefaultTextStyle(
      style: Theme.of(context).primaryTextTheme.title,
      softWrap: false,
      overflow: TextOverflow.ellipsis,
      child: Row(children: <Widget>[
        // branded icon
        SizedBox(
          width: 72.0,
          child: IconButton(
            icon: Icon(
              Icons.menu,
              semanticLabel: 'menu',
            ),
            padding: EdgeInsets.only(right: 8.0),
            onPressed: this.onPress,
          ),
        ),
        // Here, we do a custom cross fade between backTitle and frontTitle.
        // This makes a smooth animation between the two texts.
        Stack(
          children: <Widget>[
            Opacity(
              opacity: CurvedAnimation(
                parent: ReverseAnimation(animation),
                curve: Interval(0.5, 1.0),
              ).value,
              child: FractionalTranslation(
                translation: Tween<Offset>(
                  begin: Offset.zero,
                  end: Offset(0.5, 0.0),
                ).evaluate(animation),
                child: backTitle,
              ),
            ),
            Opacity(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Interval(0.5, 1.0),
              ).value,
              child: FractionalTranslation(
                translation: Tween<Offset>(
                  begin: Offset(-0.25, 0.0),
                  end: Offset.zero,
                ).evaluate(animation),
                child: frontTitle,
              ),
            ),
          ],
        ),
//        ),
//        Row(

//        ),
      ]),
    );
  }
}

/// Builds a Backdrop.
///
/// A Backdrop widget has two layers, front and back. The front layer is shown
/// by default, and slides down to show the back layer, from which a user
/// can make a selection. The user can also configure the titles for when the
/// front or back layer is showing.
class Backdrop extends StatefulWidget {
  final Category currentCategory;
  final Widget frontLayer;
  final Widget backLayer;
  final Widget frontTitle;
  final Widget backTitle;

  const Backdrop({
    @required this.currentCategory,
    @required this.frontLayer,
    @required this.backLayer,
    @required this.frontTitle,
    @required this.backTitle,
  })  : assert(currentCategory != null),
        assert(frontLayer != null),
        assert(backLayer != null),
        assert(frontTitle != null),
        assert(backTitle != null);

  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop>
    with TickerProviderStateMixin {
  final List<Tab> tabs = <Tab>[
    new Tab(text: 'FLY'),
    new Tab(text: 'SLEEP'),
    new Tab(text: 'EAT'),
  ];

  final GlobalKey _backdropKey = GlobalKey(debugLabel: 'Backdrop');
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      value: 1.0,
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(Backdrop old) {
    super.didUpdateWidget(old);

    if (widget.currentCategory != old.currentCategory) {
      _toggleBackdropLayerVisibility();
    } else if (!_frontLayerVisible) {
      _controller.fling(velocity: _kFlingVelocity);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool get _frontLayerVisible {
    final AnimationStatus status = _controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  void _toggleBackdropLayerVisibility() {
    _controller.fling(
        velocity: _frontLayerVisible ? -_kFlingVelocity : _kFlingVelocity);
  }

  Widget _buildStack(BuildContext context, BoxConstraints constraints) {
    double layerTitleHeight = 48+.0;
    final Size layerSize = constraints.biggest;
    final double layerTop = layerSize.height - layerTitleHeight;
//    final double layerSize = constraints.minHeight;
//    final double layerTop = layerSize - layerTitleHeight;

    Animation<RelativeRect> layerAnimation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(
//        0.0, layerTop, 0.0, layerTop - layerSize),
          0.0, layerTop, 0.0, layerTop - layerSize.height),
      end: RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0),
    ).animate(_controller.view);

    return Stack(
      key: _backdropKey,
      children: <Widget>[
        widget.backLayer,
        PositionedTransition(
          rect: layerAnimation,
          child: _FrontLayer(
            onTap: _toggleBackdropLayerVisibility,
            child: widget.frontLayer,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final _countryDestinationController = TextEditingController();
    final _destinationController = TextEditingController();
    final _travelerController = TextEditingController();
    final _dateController = TextEditingController();
    final _tabController = TabController(length: 3, vsync: this);
    var appBar = AppBar(
      brightness: Brightness.light,
      elevation: 0.0,
      titleSpacing: 0.0,
      // TODO(tianlun): Replace IconButton icon with Crane logo.
      leading: new IconButton(
        icon: Icon(Icons.menu),
        onPressed: (){
          _toggleBackdropLayerVisibility();
      },
      ),
//      title: _BackdropTitle(
//        listenable: _controller.view,
//        onPress: _toggleBackdropLayerVisibility,
//        frontTitle: widget.frontTitle,
//        backTitle: widget.backTitle,
//      ),
      actions: <Widget>[
        new IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => CraneApp()),
            );
          },
        ),
        new IconButton(
          icon: Icon(Icons.tune),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => CraneApp()),
            );
          },
        ),
      ],
      bottom: PreferredSize(
        child: Column(
          children: <Widget>[
            TabBar(
              controller: _tabController,
              tabs: tabs,
            ),
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
                controller: _countryDestinationController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Country',
                ),
              ),
            ),
            PrimaryColorOverride(
              color: kCraneBackgroundWhite,
              child: TextField(
                controller: _destinationController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Destination',
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
            SizedBox(height: 12.0),
          ],
        ),
        // TODO(tianlun): Height should be dynamic?
        preferredSize: Size.fromHeight(240.0)),
    );
    return Material(
      child: Scaffold(
        appBar: appBar,
        body: LayoutBuilder(
          builder: _buildStack,
        ),
      ),
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
      data: Theme.of(context).copyWith(primaryColor: color),
    );
  }
}
