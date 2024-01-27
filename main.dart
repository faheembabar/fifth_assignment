import 'dart:io';

void main() {
  bool continueApp = true;

  while (continueApp) {
    print("Select an option:");
    print("1. Length Conversion");
    print("2. Temperature Conversion");
    print("3. Time Conversion");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        lengthConversion();
        break;
      case 2:
        temperatureConversion();
        break;
      case 3:
        timeConversion();
        break;
      default:
        print("Invalid choice. Please select a valid option.");
    }

    print("Do you want to continue?");
    print("1. Yes");
    print("2. No");

    int continueChoice = int.parse(stdin.readLineSync()!);

    if (continueChoice != 1) {
      continueApp = false;
    }
  }
}

void lengthConversion() {
  print("Select Length Conversion Option:");
  print("1. Meter to Kilometers");
  print("2. Kilometer to Meters");
  print("3. Feet to Inches");
  print("4. Inches to Feet");
  print("5. Centimeter to Meter");
  print("6. Meter to Centimeter");

  int choice = int.parse(stdin.readLineSync()!);

  double result = 0;

  switch (choice) {
    case 1:
      result = meterToKilometers();
      break;
    case 2:
      result = kilometerToMeters();
      break;
    case 3:
      result = feetToInches();
      break;
    case 4:
      result = inchesToFeet();
      break;
    case 5:
      result = centimeterToMeter();
      break;
    case 6:
      result = meterToCentimeter();
      break;
    default:
      print("Invalid choice. Please select a valid option.");
  }

  print("Result: $result");
}

double meterToKilometers() {
  print("Enter length in meters:");
  double meters = double.parse(stdin.readLineSync()!);
  return meters / 1000;
}

double kilometerToMeters() {
  print("Enter length in kilometers:");
  double kilometers = double.parse(stdin.readLineSync()!);
  return kilometers * 1000;
}

double feetToInches() {
  print("Enter length in feet:");
  double feet = double.parse(stdin.readLineSync()!);
  return feet * 12;
}

double inchesToFeet() {
  print("Enter length in inches:");
  double inches = double.parse(stdin.readLineSync()!);
  return inches / 12;
}

double centimeterToMeter() {
  print("Enter length in centimeters:");
  double centimeters = double.parse(stdin.readLineSync()!);
  return centimeters / 100;
}

double meterToCentimeter() {
  print("Enter length in meters:");
  double meters = double.parse(stdin.readLineSync()!);
  return meters * 100;
}

void temperatureConversion() {
  print("Select Temperature Conversion Option:");
  print("1. Fahrenheit to Celsius");
  print("2. Celsius to Fahrenheit");

  int choice = int.parse(stdin.readLineSync()!);

  double result = 0;

  switch (choice) {
    case 1:
      result = fahrenheitToCelsius();
      break;
    case 2:
      result = celsiusToFahrenheit();
      break;
    default:
      print("Invalid choice. Please select a valid option.");
  }

  print("Result: $result");
}

double fahrenheitToCelsius() {
  print("Enter temperature in Fahrenheit:");
  double fahrenheit = double.parse(stdin.readLineSync()!);
  return (fahrenheit - 32) * 5 / 9;
}

double celsiusToFahrenheit() {
  print("Enter temperature in Celsius:");
  double celsius = double.parse(stdin.readLineSync()!);
  return (celsius * 9 / 5) + 32;
}

void timeConversion() {
  print("Select Time Conversion Option:");
  print("1. Seconds to Minutes");
  print("2. Minutes to Seconds");
  print("3. Minutes to Hours");
  print("4. Seconds to Hours");
  print("5. Milliseconds to Minutes");
  print("6. Milliseconds to Hours");

  int choice = int.parse(stdin.readLineSync()!);

  double result = 0;

  switch (choice) {
    case 1:
      result = secondsToMinutes();
      break;
    case 2:
      result = minutesToSeconds();
      break;
    case 3:
      result = minutesToHours();
      break;
    case 4:
      result = secondsToHours();
      break;
    case 5:
      result = millisecondsToMinutes();
      break;
    case 6:
      result = millisecondsToHours();
      break;
    default:
      print("Invalid choice. Please select a valid option.");
  }

  print("Result: $result");
}

double secondsToMinutes() {
  print("Enter time in seconds:");
  double seconds = double.parse(stdin.readLineSync()!);
  return seconds / 60;
}

double minutesToSeconds() {
  print("Enter time in minutes:");
  double minutes = double.parse(stdin.readLineSync()!);
  return minutes * 60;
}

double minutesToHours() {
  print("Enter time in minutes:");
  double minutes = double.parse(stdin.readLineSync()!);
  return minutes / 60;
}

double secondsToHours() {
  print("Enter time in seconds:");
  double seconds = double.parse(stdin.readLineSync()!);
  return seconds / 3600;
}

double millisecondsToMinutes() {
  print("Enter time in milliseconds:");
  double milliseconds = double.parse(stdin.readLineSync()!);
  return milliseconds / 60000;
}

double millisecondsToHours() {
  print("Enter time in milliseconds:");
  double milliseconds = double.parse(stdin.readLineSync()!);
  return milliseconds / 3600000;
}
