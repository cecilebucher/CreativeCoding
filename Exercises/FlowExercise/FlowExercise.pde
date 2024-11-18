



void setup() {
  size(400, 400);
  noLoop();
  println("a");
  doSomething3();
}


void draw() {

  background(0);
  doSomething2();
  println("b");
}

void doSomething1() {
  println('c');
}

void doSomething2() {
  println('d');
}

void doSomething3() {
  println('e');
  doSomething1();
  println('f');
}
