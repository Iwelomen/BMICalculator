

void main() {
  // Car myCar = Car(carStyle: CarType.convertable);
  // print(myCar);

  // int myAge = 33;
  //
  // bool canBuyAlcohol = myAge > 21 ? true : false;
  // print(canBuyAlcohol);
  // Function result = calculator(3, 5, add);

}
Function calculator(int n1, int n2, Function calculation) {
  return calculation(n1, n2);
}



class Car {
  CarType? carStyle;

  Car({this.carStyle});
  }

enum CarType {
  convertable,
  coupe,
  suv,
  hatchback,
}
