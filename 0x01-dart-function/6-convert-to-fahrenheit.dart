List<double> convertToF(List<double> temperaturesInC) {
  // All the results should be rounded to two decimal points.
  List<double> results = [];
  for (double temp in temperaturesInC) {
    double result = double.parse(((temp * 9 / 5) + 32).toStringAsFixed(2));

    // check if result has two decimal points, if not add another decimal point
    if (result.toString().split('.')[1].length == 2) {
      result = double.parse(result.toString() + '0');
    }
    results.add(result);
  }
  return results;
}
