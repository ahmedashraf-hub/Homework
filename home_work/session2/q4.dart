/* Map Lookup
Objective: Practice accessing map values using keys.
Instructions:
- Create a map named person with the keys and values: 'name': 'Alice', 'age': '25', and 'city': 'New
York'.
- Print the age of the person from the map.
- Update the city to 'Los Angeles' and print the updated map.
 */
void main(){
  Map<String, String> persons = {
    'name' : 'Alice',
    'age' : 'twenty five',
    'city' : 'New York',
  };
  print(persons['age']);
  persons['city'] = 'Los Angeles';
  print(persons);
}