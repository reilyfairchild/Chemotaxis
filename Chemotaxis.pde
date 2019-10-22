Bacteria[] reily; 
 void setup()   
 {    
   size(300, 300);
   background(0);
   reily = new Bacteria[1000]; 
   for(int i = 0; i < reily.length; i++){
     reily[i] = new Bacteria();
   }
   //0, -1, 1, 1, 2
   
 }   
 void draw()   
 {    
    
    for (int i = 0; i <reily.length; i++){
      reily[i].show();
      reily[i].walk();
   }
   
   fill(0);
   stroke(0);
   ellipse(mouseX, mouseY, 80,80);
   
 }
 class Bacteria    
 {    
   int myX, myY, myColor;
   
   Bacteria(){
   myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
   
   myX = 150;
   myY = 150;
   
   }
   void show(){
     fill(myColor);
     stroke(myColor);
     ellipse(myX, myY, 1, 1);
   }
   
   void walk(){
     
     int dir = (int)(Math.random() *4);
     if(dir == 0){
        myX = myX + 2;
     }else if (dir == 1){
        myX = myX - 2;
     }else if (dir == 2){
        myY = myY - 2;
     }else{
        myY = myY + 2;
     }
       
   }
 }