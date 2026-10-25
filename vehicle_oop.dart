
abstract class VehicleActions {
  void move();
}

abstract class Vehicle implements VehicleActions {
  String brand;
  int speed;

  Vehicle(this.brand, this.speed);

  void displayInfo() {
    print('Brand: $brand');
    print('Speed: $speed km/h');
  }

  @override
  void move();
}

class Car extends Vehicle {
  Car(String brand, int speed) : super(brand, speed);

  @override
  void displayInfo() {
    print('Car Brand: $brand');
    print('Car Speed: $speed km/h');
    print('Number of wheels: 4');
  }

  @override
  void move() {
    print('$brand car is driving on the road.');
  }
}

class Motorcycle extends Vehicle {
  Motorcycle(String brand, int speed) : super(brand, speed);

  @override
  void displayInfo() {
    print('Motorcycle Brand: $brand');
    print('Motorcycle Speed: $speed km/h');
    print('Number of wheels: 2');
  }

  @override
  void move() {
    print('$brand motorcycle is riding on the road.');
  }
}

mixin ElectricFeature {
  void chargeBattery() {
    print('The electric vehicle is charging its battery.');
  }
}

class ElectricScooter with ElectricFeature {
  String brand;

  ElectricScooter(this.brand);

  void ride() {
    print('$brand electric scooter is ready to ride.');
  }
}

void main() {
  Car car = Car('Toyota', 120);
  Motorcycle motorcycle = Motorcycle('Honda', 90);

  print('       CAR ');
  car.displayInfo();
  car.move();

  print('\n     MOTORCYCLE ');
  motorcycle.displayInfo();
  motorcycle.move();

  print('\n     POLYMORPHISM ');
  List<Vehicle> vehicles = [car, motorcycle];

  for (Vehicle vehicle in vehicles) {
    vehicle.move();
  }

  print('\n      ELECTRIC SCOOTER ');
  ElectricScooter scooter = ElectricScooter('Xiaomi');
  scooter.ride();
  scooter.chargeBattery();
}
