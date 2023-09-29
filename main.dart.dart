import 'dart:io';

var mainSelections = "";
var childSelections = "";
var restart = false;

void main() {
  do {
    restart = false;
    var myOptions = {
      "1": "Length Conversion",
      "2": "Temperature Conversion",
      "3": "Area Conversion",
      "4": "Weight Conversion",
      "5": "Time Conversion",
    };
    showOptions(myOptions);
  } while (restart);
}

showOptions(Map optionsMap) {
  print("---------------------------------");
  print("Please select one option");
  for (var i = 1; i <= optionsMap.length; i++) {
    print("$i: ${optionsMap["$i"]}");
  }
  print("Enter conversion:");

  mainSelections = stdin.readLineSync()!;
  if (mainSelections == "1") {
    showLengthOptions();
  } else if (mainSelections == "2") {
    showTempOptions();
  } else if (mainSelections == "3") {
    showAreaOptions();
  } else if (mainSelections == "4") {
    showWeightOptions();
  } else if (mainSelections == "5") {
    showTimetOptions();
  } else {
    print("Incorrect Input, Please make selection from above options only");
    showOptions(optionsMap);
  }
}

showLengthOptions() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Meter to kilometers",
    "2": "Kilometer to Meters",
    "3": "feet to Inches",
    "4": "Inches to Feet",
    "5": "Centimeter to Meter",
    "6": "Meter to Centimeter"
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  print("Enter conversion :");
  childSelections = stdin.readLineSync()!;
    print("Enter value:");

  if (childSelections == "1") {
    meterToKilometers();
  } else if (childSelections == "2") {
    kmToMeters();
  } else if (childSelections == "3") {
    feetToInches();
  } else if (childSelections == "4") {
    inchesToFeet();
  } else if (childSelections == "5") {
    cmToMeters();
  } else if (childSelections == "6") {
    metersToCm();
  } else {
    print("Incorrect Input, Please make selection from above options only");
    showLengthOptions();
  }
  restartProgram();
}

showWeightOptions() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Kg to Grams",
    "2": "Grams to Kg",
    "3": "Pounds to Kg",
    "4": "Kg to Tons",
    "5": "Tons to Kg",
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  print("Enter conversion :");
  childSelections = stdin.readLineSync()!;
    print("Enter value:");

  if (childSelections == "1") {
    KgToGrams();
  } else if (childSelections == "2") {
    gramTokg();
  } else if (childSelections == "3") {
    PoundsTokg();
  } else if (childSelections == "4") {
    KgTotons();
  } else if (childSelections == "5") {
    tonsTokg();
  } else {
    print("Incorrect Input, Please make selection from above options only");
    showLengthOptions();
  }
  restartProgram();
}

showAreaOptions() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Square Miles to Square yards",
    "2": "Square Yards to Square Miles",
    "3": "Square Yards to Square Feet",
    "4": "Square Feet to Square Yards",
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  print("Enter conversion :");
  childSelections = stdin.readLineSync()!;
    print("Enter value:");

  if (childSelections == "1") {
    SquareMilestosquareyards();
  } else if (childSelections == "2") {
    squareyardstoSquareMiles();
  } else if (childSelections == "3") {
    squareyardstofeet();
  } else if (childSelections == "4") {
    Squarfeettosquareyards();
  } else {
    print("Incorrect Input, Please make selection from above options only");
    showLengthOptions();
  }
  restartProgram();
}

showTimetOptions() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Seconds to Minutes",
    "2": "Minutes to Seconds",
    "3": "Minutes to Hours",
    "4": "Seconds to Hours",
    "5": "Milliseconds to Minutes",
    "6": "Milliseconds to hourse",
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  print("Enter conversion :");
  childSelections = stdin.readLineSync()!;
    print("Enter value:");

  if (childSelections == "1") {
    SecondstoMinutes();
  } else if (childSelections == "2") {
    minuteTosecond();
  } else if (childSelections == "3") {
    minuteTohours();
  } else if (childSelections == "4") {
    secTohours();
  } else if (childSelections == "5") {
    milisectoMinutes();
  } else if (childSelections == "6") {
    millisecTohours();
  } else {
    print("Incorrect Input, Please make selection from above options only");
    showLengthOptions();
  }
  restartProgram();
}

showTempOptions() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Fahrenheit to Celcius",
    "2": "Celcius to Fahrenheit",
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  print("Enter conversion :");
  childSelections = stdin.readLineSync()!;
    print("Enter value:");

  if (childSelections == "1") {
    fahreneitTocelsius();
  } else if (childSelections == "2") {
    celciusTofahreneit();
  } else {
    print("Incorrect Input, Please make selection from above options only");
    showTempOptions();
  }
  restartProgram();
}

//MAIN OPTION NUMBER ->  LENGTH CONVERSION
//METER to kilometers
meterToKilometers() {
  int meters = int.parse(stdin.readLineSync()!);
  int km = meters ~/ 1000;
  print("$meters meters are equal to $km km");
}

//Km to Meters
kmToMeters() {
  int km = int.parse(stdin.readLineSync()!);
  int meter = km * 1000;
  print("$km km are equal to $meter m");
}

//Feet to Inches()
feetToInches() {
  int feet = int.parse(stdin.readLineSync()!);
  int inches = feet * 12;
  print("$feet  f are equal to $inches  inch");
}

//Inches to Feet
inchesToFeet() {
  int inches = int.parse(stdin.readLineSync()!);
  double feet = inches / 12;
  print("$inches inch are equal to $feet feet");
}

//cm to Meters
cmToMeters() {
  int cm = int.parse(stdin.readLineSync()!);
  double meters = cm / 100;
  print("$cm cm are equal to $meters m ");
}

//Meters to CM
metersToCm() {
  int meter = int.parse(stdin.readLineSync()!);
  double cm = meter / 100;
  print("$meter m are equal to $cm cm");
}

//celciusTofahreneit
fahreneitTocelsius() {
  int fahreneit = int.parse(stdin.readLineSync()!);
  double celsius = (fahreneit - 32) / 1.8;
  print("$fahreneit fah are equal to $celsius cel ");
}

//celciusTofahreneit
celciusTofahreneit() {
  int celsius = int.parse(stdin.readLineSync()!);
  double fahreneit = (celsius * 1.8) + 32;
  print("$celsius cel are equal to $fahreneit fah");
}

//Kg to Grams
KgToGrams() {
  int kg = int.parse(stdin.readLineSync()!);
  double gram = kg * 1000;
  print("$kg kg are equal to $gram gram");
}

//gram to kg
gramTokg() {
  int gram = int.parse(stdin.readLineSync()!);
  double kg = gram / 1000;
  print("$gram gram are equal to $kg kg");
}

//Pounds to Kg
PoundsTokg() {
  int Pounds = int.parse(stdin.readLineSync()!);
  double kg = Pounds * 0.45359237;
  print("$Pounds pounds are equal to $kg kg");
}

//Kg to Grams
KgTotons() {
  int kg = int.parse(stdin.readLineSync()!);
  double tons = kg / 1000;
  print("$kg kg are equal to $tons tons ");
}

//tons to kg
tonsTokg() {
  int tons = int.parse(stdin.readLineSync()!);
  double kg = tons / 1000;
  print("$tons tons are equal to $kg kg");
}

//Seconds to Minutes
SecondstoMinutes() {
  int sec = int.parse(stdin.readLineSync()!);
  double min = sec / 60;
  print("$sec sec are equal to $min min");
}

// Minutes to second
minuteTosecond() {
  int min = int.parse(stdin.readLineSync()!);
  double sec = min * 60;
  print("$min min  are equal to $sec sec");
}

// Minutes to hours
minuteTohours() {
  int min = int.parse(stdin.readLineSync()!);
  double hours = min / 60;
  print("$min min  are equal to $hours hours");
}

// sec  to hours
secTohours() {
  int sec = int.parse(stdin.readLineSync()!);
  double hours = sec / 3600;
  print("$sec min  are equal to $hours hours");
}

//milisec to Minutes
milisectoMinutes() {
  int millisec = int.parse(stdin.readLineSync()!);
  double min = millisec / 60000;
  print("$millisec milli- sec are equal to $min min");
}

// Minutes to second
millisecTohours() {
  int millisec = int.parse(stdin.readLineSync()!);
  double hours = millisec / 3600000;
  print("$millisec millisec  are equal to $hours hour");
}

// Square Miles to Square yards
SquareMilestosquareyards() {
  int sqMils = int.parse(stdin.readLineSync()!);
  double sqyards = sqMils * 3097600;
  print("$sqMils sqMils  are equal to $sqyards sqyards");
}

// Square Miles to Square yards
squareyardstoSquareMiles() {
  int sqyards = int.parse(stdin.readLineSync()!);
  double sqmils = sqyards / 3097600;
  print("$sqyards sqyards  are equal to $sqmils sqmils");
}

// Square Miles to Square yards
squareyardstofeet() {
  int sqyards = int.parse(stdin.readLineSync()!);
  double sqfeet = sqyards * 9;
  print("$sqyards sqyards  are equal to $sqfeet sqfeet");
}

// Square feet to Square yards
Squarfeettosquareyards() {
  int sqfeet = int.parse(stdin.readLineSync()!);
  double sqyards = sqfeet * 3097600;
  print("$sqfeet sqfeet  are equal to $sqyards sqyards");
}

restartProgram() {
  print("---------------------------------");
  print("Press R to Continue");
  print("Press T to Terminate");
  var input = stdin.readLineSync();
  if (input == "R") {
    restart = true;
  } else if (input == "T") {
    restart = false;
  } else {
    print("Incorrect Input, Please make selection from above options only");
    restartProgram();
  }
}
