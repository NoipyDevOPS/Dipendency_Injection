import 'package:angular/angular.dart';
import 'src/car/car_component.dart';
// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  template: '''
    <h1>{{title}}</h1>
    <my-car></my-car>
    <my-injectors></my-injectors>
    <h2>User</h2>
    <p id="user">
      {{userInfo}}
      <button (click)="nextUser()">Next User</button>
    </p>
    <my-heroes id="authorized" *ngIf="isAuthorized"></my-heroes>
    <my-heroes id="unauthorized" *ngIf="!isAuthorized"></my-heroes>
    <my-providers></my-providers>
  ''',
  directives: [coreDirectives, CarComponent]
)
class AppComponent {
  
}
