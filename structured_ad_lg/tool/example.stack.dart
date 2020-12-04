import "./worker.stack.dart";

main(List<String> args) {
  Stack<int> test=Stack<int>();
  int hoge;
  for (num i = 0; i < args.length; i++) {
    try {
      hoge = int.parse(args[i].toString());
    } catch (exception) {
    hoge = 0;
    }
    test.push(hoge);
    print("nowhead[$i]::${test.nowHead()}");
  }
  print(">> end push");
  print("nowhead[${args.length-1}]::${test.nowHead()}");
  print("isEmpty[]::${test.isEmpty()}");
  for (num i = 0; i < args.length; i++) {
    print("poped[$i]::${args[args.length-(i+1)]} >> ${test.pop()}");
    print("nowhead[$i]::${test.nowHead()}");
  }
  print(">> end pop");
  print("isEmpty[]::${test.isEmpty()}");
  for (num i = 0; i < args.length; i++) {
    try {
      hoge = int.parse(args[i].toString());
    } catch (exception) {
    hoge = 0;
    }
    test.push(hoge);
    print("nowhead[$i]::${test.nowHead()}");
  }
  print(">> end push");
  Direction dires=Direction();
  //test.swap();
  //test.rotate(dires.right,2);
  //test.swap();
  int deg = test.degree(-80);
  print("deg::$deg");
  test.rotate(dires.left,deg);
  //test.swap();
  print("nowhead[${args.length-1}]::${test.nowHead()}");
  print("isEmpty[]::${test.isEmpty()}");
  for (num i = 0; i < args.length; i++) {
    print("poped[$i]::${args[args.length-(i+1)]} >> ${test.pop()}");
    print("nowhead[$i]::${test.nowHead()}");
  }
  print(">> end pop");
  print("isEmpty[]::${test.isEmpty()}");
}