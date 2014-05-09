#include <MeggyJrSimple.h>

int xcoord = 0;
int ycoord = 0;
int blockx = random(1);
int blocky = random(1);

void setup()
{
  MeggyJrSimpleSetup();
}

void loop()
{ 
  ClearSlate();
  DrawPx(xcoord,ycoord,7);
  DrawPx(blockx,blocky,1);
  CheckButtonsDown();
  if (Button_Up)  //if button_up is pressed, move dot up
    ycoord++;
      if (ycoord > 6)
        ycoord = 6;
        
  if (Button_Down)  //if button_up is pressed, move dot up
     ycoord--;
      if (ycoord < 1)
        ycoord = 1;

  if (Button_Left)  //if button_up is pressed, move dot up
     xcoord--;
      if (xcoord > 6)
        xcoord = 6;

  if (Button_Right)  //if button_up is pressed, move dot up
     xcoord++;
      if (xcoord < 1)
        xcoord = 1;
  
  if (xcoord == blockx && ycoord == blocky)      //When red dot touches blue dot, the blue dot and wall are reset
   {
    ClearSlate();
    delay(100);
    DrawPx(blockx,blocky,1);
   }
  DisplaySlate();
  delay(50);
  


}
/*void DrawBlock()
{
  DrawPx(blockx, blocky, 1);
  DrawPx(blockx+1, blocky, 1);
  DrawPx(blockx, blocky+1, 1);
}
*/

