import 'car.dart';

// Simple car with 4 cylinders
Car simpleCar() => Car(Engine(), Tires())..description = 'Simple'; 

class Engine2 extends Engine {
  Engine2(cylinders) : super.withCylinders(cylinders);
}

// Super car with 12 cylinders
Car superCar() => Car(Engine(), Tires())..description = 'Super';

class MockEngine extends Engine {
  MockEngine() : super.withCylinders(8);
}

class MockTires extends Tires {
  MockTires() {
    make = 'YokoGoodStone';
  }  
}

// Test car with 8 cylinders 
Car testCar() => Car(MockEngine(), MockTires())..description = 'Test';
      