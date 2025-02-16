/* 4. Weather Report:
Use Map and List to create a program that stores weather data for different cities (temperature,
humidity, etc.). Write a function that can retrieve and print weather details using a city name.
 */
void main() {
  Map<String, Map<String, dynamic>> weather = {
    'Cario': {
      'temperature': 21,
      'humidity': 40,
      'wind': 11,
      'condition': 'partly sunny',
    },
    'Alexandria': {
      'temperature': 20,
      'humidity': 40,
      'wind': 12,
      'condition': 'partly sunny',
    },
    'Aswan': {
      'temperature': 24,
      'humidity': 11,
      'wind': 11,
      'condition': 'Sunny',
    },
  };
  printWeather('Cario', weather);
}

void printWeather(String city, Map<String, Map<String, dynamic>> weather) {

  if (weather.containsKey(city)) {
    var cityWeather = weather[city]!;
    print('Weather details for $city:');
    print('Temperature: ${cityWeather['temperature']}°C');
    print('Humidity: ${cityWeather['humidity']}%');
    print('Wind: ${cityWeather['wind']} km/h');
    print('Condition: ${cityWeather['condition']}');
  } else {
    print('Weather data for $city is not available.');
  }
}
