class Ticker {
  const Ticker();

  Stream<int> tick({required int duration}) {
    return Stream.periodic(
      const Duration(seconds: 1),
      (computationCount) {
        return duration - computationCount - 1;
      },
    );
  }
}
