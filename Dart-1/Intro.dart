// ignore_for_file: unused_local_variable

import 'employee.dart';

final double discount = 0.15;

void main(List<String> args) {
  String name = "Hakan";
  String? unknown;
  int parse = 34;
  int num = 3;
  double price = 120;
  bool isLoading;

  // const defines the TAU on the num immediately.
  // final defines discount at the end with specific instructions.
  const double TAU = 6.28;
  final double discount = 0.1;

  print("Hello " + name + ", ${num}" + " " + num.toString());

  // try catch errors.
  try {
    print(int.parse(name));
  } catch (e) {
    print("Dude, your variable sucks. \n\n" + e.toString());
  }

  if (parse > 5) {
    print("Too much");
    isLoading = true;
  } else {
    print("Too little");
    isLoading = false;
  }

  // ignore: unnecessary_null_comparison
  if (unknown != null) {
    print("You named it Unknown for a reason.");
  }

  if (isLoading) {
    print("Not ready yet duuude.");
  } else {
    print("Loading is over dude.");
  }

  // once something is defined, it no longer can change its type.
  var something = "Duuuuude";
  try {
    //something = 1;
    print("Fine dude.");
  } catch (e) {
    print("Duude you have one job.");
  }

  // dynamic class is convertible to any other type during ops.
  dynamic something2 = "Duuuuude";
  try {
    something2 = 1;
    print("Alright, dynamic's fine duuuude.\n");
  } catch (e) {
    print("Dude you have no idea how much fail this is.\n");
  }

  List<String> fruitList = ["Apple", "Pear", "Melon"];
  fruitList.add("tomato");
  print(fruitList);

  // List name not provided so these are generic collectibles.
  List fruitList2 = ["Apple", "Pear", "Melon"];
  fruitList2.add(1);
  print(fruitList2);
  print("\n");

  print(fruitList.indexOf("Melon"));
  print(fruitList.contains("Pear"));

  Map user = {"name": "Hakan", "age ": 1};
  print(user["age "]);

  ShowMyNumber();
  ShowMyNumberByParams(number: 666, name: "Gizem");
  print(calculateDiscount(price));

  Employee newEmployee = Employee("Hakan", 20000, "Technical Office");
  PrintEmployeeDepartment(newEmployee);
}

void ShowMyNumber() {
  print("\nYour num is **. Did you forget your number? Silly goose.");
}

void ShowMyNumberByParams(
    {required int number, String? name, int? age, List<String>? users}) {
  print("Your num is ${number}");
}

double calculateDiscount(double price) {
  double calculatedDisc = price * discount;
  return calculatedDisc;
}
