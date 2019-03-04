class Engine {
  final int cylinders;

  Engine() : cylinders = 4;
  Engine.withCylinders(this.cylinders);
}

class Tires {
  String make = 'Flinstone';
  String model = 'Square';
}

class Car {
  final Engine engine;
  final Tires tires;
  String description = 'DI';

  Car(this.engine, this.tires);

  String drive() => '$description car with '
    '${engine.cylinders} cylinders and '
    '${tires.make} tires.';
}
