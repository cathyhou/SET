boolean allEqual(int a, int b, int c) {
  return (a==b && b==c);
}

boolean allDifferent(int a, int b, int c) {
  return (a!=b && a!=c && b!=c);
}

boolean sameColor(Card a, Card b, Card c) {
  int colorA = (int) Math.floor(a.getCol()/3);
  int colorB = (int) Math.floor(b.getCol()/3);
  int colorC = (int) Math.floor(c.getCol()/3);
  return allEqual(colorA, colorB, colorC);
}

boolean sameShape(Card a, Card b, Card c) {
  int shapeA = a.getCol() % 3;
  int shapeB = b.getCol() % 3;
  int shapeC = c.getCol() % 3;
  return allEqual(shapeA, shapeB, shapeC);
}

boolean sameFill(Card a, Card b, Card c) {
  int fillA = (int) Math.floor(a.getRow()/3);
  int fillB = (int) Math.floor(b.getRow()/3);
  int fillC = (int) Math.floor(c.getRow()/3);
  return allEqual(fillA, fillB, fillC);
}

boolean sameCount(Card a, Card b, Card c) {
  int countA = a.getRow() % 3;
  int countB = b.getRow() % 3;
  int countC = c.getRow() % 3;
  return allEqual(countA, countB, countC);
}

boolean diffColor(Card a, Card b, Card c) {
  int colorA = (int) Math.floor(a.getCol()/3);
  int colorB = (int) Math.floor(b.getCol()/3);
  int colorC = (int) Math.floor(c.getCol()/3);
  return allDifferent(colorA, colorB, colorC);
}

boolean diffShape(Card a, Card b, Card c) {
  int shapeA = a.getCol() % 3;
  int shapeB = b.getCol() % 3;
  int shapeC = c.getCol() % 3;
  return allDifferent(shapeA, shapeB, shapeC);
}

boolean diffFill(Card a, Card b, Card c) {
  int fillA = (int) Math.floor(a.getRow()/3);
  int fillB = (int) Math.floor(b.getRow()/3);
  int fillC = (int) Math.floor(c.getRow()/3);
  return allDifferent(fillA, fillB, fillC);
}

boolean diffCount(Card a, Card b, Card c) {
  int countA = a.getRow() % 3;
  int countB = b.getRow() % 3;
  int countC = c.getRow() % 3;
  return allDifferent(countA, countB, countC);
}  

boolean isSet(Card a, Card b, Card c) {
  return (sameColor(a, b, c) || diffColor(a, b, c))
         && (sameShape(a, b, c) || diffShape(a, b, c))
         && (sameFill(a, b, c) || diffFill(a, b, c))
         && (sameCount(a, b, c) || diffCount(a, b, c));
}
