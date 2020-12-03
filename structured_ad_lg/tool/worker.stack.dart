import 'dart:math';
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
    print("poped[$i]::${test.pop()}");
    print("nowhead[$i]::${test.nowHead()}");
  }
  print(">> end pop");
  print("isEmpty[]::${test.isEmpty()}");
}
class Stack<T> {
  List<T> data = [];
  int head=-1;
  int nowHead(){
    return this.head;
  }
  void push(T value){
    this.data.add(value);
    this.head++;
  }
  T pop(){
    T temp=this.data[this.head];
    this.data.removeAt(this.head);
    this.head--;
    return temp;
  }

  void rotate(String direction, int nr){}
  void duplicate(){
    T temp = this.pop();
    this.push(temp);
    this.push(temp);
  }
  T peek(){
    return this.data[this.head];
  }
  void swap(){
    T temp = this.data[this.head];
    this.data[this.head]=this.data[this.head-1];
    this.data[this.head-1]=temp;
  }
  Stack clone(){
    return this;
  }
  List<T> shure(){
    List<T> ans=[];
    int hd=this.nowHead();
    for (var i = 0; i < hd+1; i++) {
      ans[i]=this.pop();
    }
    return ans;
  }
  void dare(){}
  void flow(List<T> init){
    for (var i = 0; i < init.length; i++) {
      this.push(init[i]);
    }
  }
  int degree(num degree){
    int thisLn= this.data.length;
    return (thisLn*(degree/360)).floor();

  }
  bool isEmpty(){
    if(this.data.length==0||this.head==-1){
      return true;
    }else{
      return false;
    }
  }
}
class Dirction {
  static final String left="left";
  static final String right="right";
  static final String upper="upper";
  static final String downer="downer";
}