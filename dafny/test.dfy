method Main() {
  print "hello, Dafny\n";
  printEven(10);
  printOdd(11);
  printEven(12);
}

method printEven(a: int) requires a % 2 == 0{
  print a; 
}

method printOdd(a: int) requires a % 2 != 0{
  print a;
}
