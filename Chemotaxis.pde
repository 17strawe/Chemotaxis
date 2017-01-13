 public Bacteria[] dots ;
 void setup()   
 {     
    size(500,500);
    background(0);
    
    dots = new Bacteria[50];
    for(int i = 0; i < dots.length;i++){
      dots[i] = new Bacteria();
    }
 }   
 void draw()   {   
  background(#4284B9); 
   for(int i = 0; i < dots.length;i++){
     dots[i].move();
     dots[i].show();
   }  
 }  
 public class Bacteria    
 {     
   int myX;
   int myY;
   int colour;
   
 public Bacteria(){
     myX = 0;
     myY = 0;
     colour = 0;
  }   
void show(){
  fill(#AD67D1);
  ellipse(myX,myY,20,20);
}
public void move(){
 myX = myX + (int)(Math.random()*(mouseX - myX)/20);
 myY = myY + (int)(Math.random()*(mouseY - myY)/20); 
}
 }
