import 'package:angular/angular.dart';
import 'car.dart';
import 'car_creations.dart' as carCreations;
import 'car_factory.dart';

@Component(
  selector: 'my-car',
  template: '''
    <h2>Cars</h2>
    <div id="di">{{car.drive}}</div>
    <div id="factory">{{factoryCar.drive}}</div>
    <div id="simple">{{simpleCar.drive}}</div>
    <div id="super">{{superCar.drive}}</div>
    <div id="test">{{testCar.drive}}</div>
  ''',
  providers: [
    ClassProvider(Car),
    ClassProvider(Engine),
    ClassProvider(Tires),
    ],
)

class CarComponent {
  final Car car;

  CarComponent(this.car);
  
  Car factoryCar = (CarFactory()).createCar();
  Car simpleCar = carCreations.simpleCar();
  Car superCar = carCreations.superCar();
  Car testCar =carCreations.testCar();
}