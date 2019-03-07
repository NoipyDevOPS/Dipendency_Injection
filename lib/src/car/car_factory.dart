import 'car.dart';

class CarFactory {
  Car createCar() => Car(createEngine(), createTires()) 
  ..description = 'Factory';
    
  Engine createEngine() => Engine();
  Tires createTires() => Tires();
}