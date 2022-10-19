class AsteroidCollision735 {
  List<int> asteroidCollision(List<int> asteroids) {
    final stack = <int>[];
    for (final asteroid in asteroids) {
      if (asteroid > 0) {
        stack.add(asteroid);
      } else {
        while (stack.isNotEmpty && stack.last > 0 && stack.last < -asteroid) {
          stack.removeLast();
        }
        if (stack.isEmpty || stack.last < 0) {
          stack.add(asteroid);
        } else if (stack.last == -asteroid) {
          stack.removeLast();
        }
      }
    }
    return stack;
  }
}