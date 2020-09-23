void main() {
  Duck().fly();
}

class Animal {
  void move() {
    print('position changed');
  }
}

class Fish extends Animal {
  @override
  void move() {
    super.move();
    print('by Swimming');
  }
}

class Bird extends Animal {
  @override
  void move() {
    super.move();
    print('by flying');
  }
}

mixin canSwim {
  void swim() {
    print('changing position by swimmming');
  }
}

mixin canFky {
  void fly() {
    print('changing position by flying ');
  }
}

class Duck extends Animal with canFky, canSwim {}
