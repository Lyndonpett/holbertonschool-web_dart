List<double> convertToF(List<double> temperaturesInC) {
  // All the results should be rounded to two decimal points.
  return temperaturesInC
      .map((temp) => double.parse((temp * 9 / 5 + 32).toStringAsFixed(2)))
      .toList();
}
