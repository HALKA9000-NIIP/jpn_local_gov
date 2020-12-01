import 'dart:async';
import 'dart:io';

void main(List<String> args) {
  String fileData;
  Future<String> future=file_read(args[0]);
  future.then((content) => analyze(content))
        .catchError((error) => print(error));
}
 Future<String> file_read(String name) async {
  String text;
  try {
    final file = File('./${name}.txt');
      text = await file.readAsString();
  } catch (e) {
    print("Couldn't read file");
  }
  return text;
}
void analyze(String data){
  List<String> line=rmVoid(data.split("\r\n"));
  num lineLen= line.length;
  Map sData={};
  lineLen= line.length;
  List<String> line2=[];
  for (num i = 0; i < lineLen; i++) {
    String fullLoc=line[i].split("：")[0];
    String ops="";
    if(locLv(fullLoc)==3){ops=fullLoc;}
    line2.add(ops);
    
  }
  line=rmVoid(line2);
  lineLen= line.length;
  for (num i = 0; i < lineLen; i++) {
    print(line[i]);
  }
}
int locLv(String loc){
  String par = loc.substring(loc.length-1);
  if (loc.length<=2) {
    loc.substring(1);
  }
  List lv=[["道","州"],["都","府","県"],["郷","郡"],["市","町","村"],["区"]];

  for (int i = 0; i < lv.length; i++) {
    for (var lvi in lv[i]) {
      if (par==lvi) {
        return i+1;
      }
    }
  }
  return -1;
}
String locLvN(String loc){
  String par = loc.substring(loc.length-1);
  if (loc.length<=2) {
    loc.substring(1);
  }
  List lv=[["道","州"],["都","府","県"],["郷","郡"],["市","町","村"],["区"]];

  for (int i = 0; i < lv.length; i++) {
    for (var lvi in lv[i]) {
      if (par==lvi) {
        return lvi+1;
      }
    }
  }
  return "外";
}
List<String> rmVoid(List<String> t){
  List<String> a=[];
  for (String s in t) {
    if (s.length>0) {
      a.add(s);
    }
  }
  return a;
}