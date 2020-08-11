/*declare array of objects*/
Block[] blocks;
Ball[] balls;

int amount = 10;
int size = 10;
int posX = 50;
int posY = 50;

int bW = 50;
int bH = 50;

float Area;

void setup()
{
  size(600,600);
  blocks = new Block[amount]; /*create blocks array*/
  balls =new Ball[amount]; /*create balls array*/  
}
void draw()
{
  background(#FFFFFF);
  for(int i = 0; i < blocks.length; i++)
  {    
    int tmpBallX = posX + (i * (size*2));
    balls[i] = new Ball(size, tmpBallX, posY + bH);/*create each ball's object*/
    balls[i].draw();/*show each ball*/
    
    int tmpBlockX = posX + (i * bW); 
     blocks[i] =  new Block(tmpBlockX, posY, bW, bH); /*create each vlokc's object*/
     blocks[i].draw(); /*show each block*/
     noLoop();
  }
}
class Ball
{
   float size;
 
   int position_x;
   int position_y;
 
   Ball(float s, int posX, int posY)
   {
     size = s;
     position_x = posX;
     position_y = posY;
   }
 
   void draw()
   {
     size = 2 * size; /*increase size to radian*/
     fill(color( random(0,255), random(0,255), random(0,255), random(0,255)));
     ellipse(position_x, position_y, size, size);
    }
}

class Block
{
  int posX;
  int posY;
  int bWidth;
  int bHeight;
   Block(int x, int y, int bW, int bH)
   {
     posX = x;
     posY = y;
     bWidth = bW;
     bHeight = bH;
   }
 
 void draw()
 {
   fill(color( random(0,255), random(0,255), random(0,255), random(0,255)));
   rectMode(CENTER);
   rect(posX, posY, bWidth, bHeight);  
 }
}
void mousePressed()
{
  redraw();
}
