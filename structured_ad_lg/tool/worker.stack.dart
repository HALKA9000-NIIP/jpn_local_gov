import 'dart:math';

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

  void rotate(String direction, int nr){
    Direction dire=Direction();
    if (nr<0) {
      if (direction==dire.left) {
        direction=dire.right;
      } else if(direction==dire.right) {
        direction=dire.left;
      }else{}
      nr*=-1;
    }
    for (var k = 0; k < nr; k++) {
      if (direction==dire.left) {
        T temp=this.data[0];
        for (var i = 0; i < this.head; i++) {
          this.data[i]=this.data[i+1];
        }
        this.data[this.head]=temp;
      } else if (direction==dire.right) {
        T temp=this.data[this.head];
        for (var i = this.head; i >= 1; i--) {
          this.data[i]=this.data[i-1];
        }
        this.data[0]=temp;
      } else {
      }
    }
  }
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
class Direction {
  final String left="left";
  final String right="right";
  final String upper="upper";
  final String downer="downer";

}