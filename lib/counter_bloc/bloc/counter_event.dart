abstract class CounterEvent {
  const CounterEvent();
}

class CounterEventLoad extends CounterEvent {}

class CounterEventSet extends CounterEvent {
  const CounterEventSet({
    required this.counter,
  });
  final int counter;
}

class CounterEventIncrement extends CounterEvent {}

class CounterEventDecrement extends CounterEvent {}
