public void setup(){
  size(500, 500);
  rectMode(CENTER);
}
public void draw(){
  background(255);
  myFractal(250, 250, 200);
}
public void myFractal(int x, int y, int siz){
  rect(x, y, siz, siz);
  if(siz > 10){
     fill(0);

    myFractal(x - siz/2 - siz/4, y - siz/2 - siz/4, siz/2);
    myFractal(x + siz/2 + siz/4, y + siz/2 + siz/4, siz/2);
    myFractal(x - siz/2 - siz/4, y + siz/2 + siz/4, siz/2);
    myFractal(x + siz/2 + siz/4, y - siz/2 - siz/4, siz/2);
  }

}
  void mousePressed() {

  stroke((int)(Math.random() * 230), (int)(Math.random() * 230), (int)(Math.random() * 230));
  }




