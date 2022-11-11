// List<String> convertToF(List<double> temperaturesInC) {
//   // All the results should be rounded to two decimal points.
//   List<String> results = [];
//   for (double temp in temperaturesInC) {
//     String result = (temp * 9 / 5 + 32).toStringAsFixed(2);

//     // check if result has two decimal points, if not add another decimal point
//     if (result.toString().split('.')[1].length == 1) {
//       result = result + '0';
//     }
//     results.add(result);
//   }
//   return results;
// }
List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map((temp) => temp * 9 / 5 + 32).toList();
}