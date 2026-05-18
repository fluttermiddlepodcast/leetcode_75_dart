// https://leetcode.com/problems/online-stock-span/
class StockSpanner {
  final _stack = <List<int>>[];

  int next(int price) {
    var span = 1;
    while (_stack.isNotEmpty && _stack.last[0] <= price) {
      span += _stack.last[1];
      _stack.removeLast();
    }

    _stack.add([price, span]);

    return span;
  }
}
