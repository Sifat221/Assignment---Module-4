
class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    double discount = price * discountPercent / 100;
    return price - discount;
  }

  void displayBook(double discountPercent) {
    print('Title: $title');
    print('Author: $author');
    print('Price: $price');
    print(
      'Price after discount: ${discountedPrice(discountPercent)}',
    );
    print('');
  }
}



class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
}



class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department)
      : super(name, salary);

  void displayInfo() {
    print('Manager Information');
    print('Name: $name');
    print('Salary: $salary');
    print('Department: $department');
    print('');
  }
}



class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  void displayInfo() {
    print('Developer Information');
    print('Name: $name');
    print('Salary: $salary');
    print('Programming Language: $programmingLanguage');
    print('');
  }
}



abstract class Appliance {
  void turnOn();
  void turnOff();
}


class Fan extends Appliance {
  @override
  void turnOn() {
    print('Fan is now running.');
  }

  @override
  void turnOff() {
    print('Fan is now switched off.');
  }
}


class Light extends Appliance {
  @override
  void turnOn() {
    print('Light is switched on.');
  }

  @override
  void turnOff() {
    print('Light is switched off.');
  }
}


void main() {

  Book book1 = Book(
    'The Alchemist',
    'Paulo Coelho',
    500,
  );

  Book book2 = Book(
    'Dart Programming',
    'Mark Lee',
    800,
  );

  print('===== BOOK DETAILS =====');

  book1.displayBook(10);
  book2.displayBook(15);

  Manager manager = Manager(
    'Rahim',
    50000,
    'Human Resources',
  );

  Developer developer = Developer(
    'Karim',
    60000,
    'Software Development',
  );

  print('===== EMPLOYEE DETAILS =====');

  manager.displayInfo();
  developer.displayInfo();

  Fan fan = Fan();
  Light light = Light();

  print('===== APPLIANCE DETAILS =====');

  fan.turnOn();
  fan.turnOff();

  light.turnOn();
  light.turnOff();
}