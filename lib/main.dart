import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(GameWidget(game: Game()));
}

class Game extends FlameGame with TapCallbacks {
  @override
  FutureOr<void> onLoad() {
    add(Squere(Vector2(30, 30)));
  }

  @override
  void onTapDown(TapDownEvent event) {
    add(Squere(event.canvasPosition));
  }
}

class Squere extends RectangleComponent with TapCallbacks {
  Squere(position) : super(position: position, size: Vector2(130, 130));

  @override
  void onTapDown(TapDownEvent event) {
    removeFromParent();
  }
}
