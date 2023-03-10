double convertToFarenheit(double celcius) {
  double fahrenheit = ((9 / 5) * celcius) + 32;
  return fahrenheit;
}

void printTemp() {
  print("celcius Fahrenheit");
  for (double i = 0; i <= 100; i += 10) {
    print("$i            ${convertToFahrenheit(i)}");
  }
}

void main() {
  printTemperatureTable();
}
