void setup() {

color skin = #F7B989;
color yellow = #FAD70F;
  
size(600, 600);
background(193, 148, 64);
fill(250, 228, 154);
rect(0, 0, 600, 250);
noStroke();

int offset = 0;

for(int x = 0;  x <= width;  x = x + 50) {
  for(int y = 300;  y <= height; y = y + 100) {
    fill(129, 85, 14);
    rect(x , y - offset, 50, 50);
  }
  if (offset == 0) {
  offset = 50;
} else {
  offset = 0;
}
}

//televisionnnnnnnnnnnnnnnnnnnnnnn
fill(137, 105, 40);
rect(100, 200, 400, 125);
noFill();
strokeWeight(5);
stroke(0);
rect(150, 45, 300, 145);
fill(0);
noStroke();
rect(290, 190, 20, 10);
rect(200, 197, 200, 3);

//fingers under
//pointer
pushMatrix();
translate(385, 378);
rotate(radians(12));
fill(skin);
ellipse(0, 0, 35, 22);
popMatrix();

pushMatrix();
translate(408, 393);
rotate(radians(48));
fill(skin);
ellipse(0, 0, 40, 22);
popMatrix();

pushMatrix();
translate(420, 420);
rotate(radians(76));
fill(skin);
ellipse(0, 0, 50, 25);
popMatrix();

pushMatrix();
translate(422, 440);
rotate(radians(70));
fill(skin);
ellipse(0, 0, 55, 40);
popMatrix();
//controllerrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
fill(255);
pushMatrix();
translate(220, 450);
rotate(radians(12));
ellipse(0, 0, 80, 150);
popMatrix();
pushMatrix();
translate(380, 450);
rotate(radians(-12));
ellipse(0, 0, 80, 150);
popMatrix();
rect(240, 380, 140, 100);
//button left
fill(0);
stroke(50);
circle(220, 415, 30);
//button right of left
fill(40);
circle(260, 450, 35);
fill(60);
noStroke();
rect(245, 445, 30, 10); 
rect(255, 435, 10, 30);
//button right of right of left
fill(0);
stroke(50);
circle(330, 445, 30);
//right buttons
noStroke();
circle(375, 400, 12); //Y
circle(387, 412, 12); //B
circle(375, 424, 12); //A
circle(363, 412, 12); //X
fill(#FAD70F);
text("Y", 372.45, 403);
fill(250, 39, 15);
text("B", 384.45, 415);
fill(131, 229, 67);
text("A", 372.45, 427);
fill(33, 179, 255);
text("X", 360.45, 415);




//thumb
pushMatrix();
translate(340, 440);
rotate(radians(45));
fill(skin);
ellipse(0, 0, 45, 30);
popMatrix();

pushMatrix();
translate(350, 450);
rotate(radians(48));
fill(skin);
ellipse(0, 0, 40, 30);
popMatrix();

pushMatrix();
translate(366, 470);
rotate(radians(45));
fill(skin);
ellipse(0, 0, 55, 37);
popMatrix();

pushMatrix();
translate(387, 500);
rotate(radians(45));
fill(skin);
ellipse(0, 0, 80, 60);
popMatrix();

//the webbed part of the hand between the thumb and the pointer finger. Je ne sais pas what its called
pushMatrix();
translate(410, 490);
rotate(radians(-35));
fill(skin);
ellipse(0, 0, 96, 70);
popMatrix();
//arm
pushMatrix();
translate(420, 560);
rotate(radians(78));
fill(skin);
ellipse(0, 0, 155, 85);
popMatrix();

strokeWeight(10);
stroke(skin);
line(455, 560, 440, 445);
}

void mouseReleased(){

}
  


void button(int x, int y, color colours) {
  if (dist(x, y, mouseX, mouseY) < 6) {
    fill(colours);
    rect(155, 50, 290, 135);
  }
}
