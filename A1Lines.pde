void setup()
{
  size(256, 256);
}

void drawTestLine(float alpha, float l, int col)
{
  int2 a = new int2((int)(width / 2.0f + 0.5f), (int)(height / 2.0f + 0.5f));
  float r =  l * (width / 2);
  int2 b = new int2(a.x + (int)(r * cos(alpha) + 0.5f), a.y + (int)(r * sin(alpha) + 0.5f));  
  LineRasterizer.drawLine(pixels, width, height, a, b, col);  
}

void test_animation_NoClip()
{
  float alpha = millis()/1000.0;
  drawTestLine(alpha, 0.9f, #ff00ff00);
}
 
void test_x_fast_a_at_origin_dx_positive_dy_positive()
{
  LineRasterizer.drawLine(pixels, width, height, new int2(0,0), new int2(width-1,0), #ffff00ff);
  LineRasterizer.drawLine(pixels, width, height, new int2(0,0), new int2(width-1,height/2), #ffffff00);
  LineRasterizer.drawLine(pixels, width, height, new int2(0,0), new int2(width-1,height-1), #ff00ffff);
  LineRasterizer.drawLine(pixels, width, height, new int2(0,0), new int2(width/2,height/16), #ffff0000);
  LineRasterizer.drawLine(pixels, width, height, new int2(0,0), new int2(width/3*2,height/8), #ff00ff00);
  LineRasterizer.drawLine(pixels, width, height, new int2(0,0), new int2(width/4*3,height/3), #ff0000ff);  
}

void test_x_fast_dx_pos_dy_pos()
{
  float s = 0*45;
  float ds = 45.0f / 6;
  drawTestLine(radians(s + 0 * ds), 0.8f, #ff000000);
  drawTestLine(radians(s + 1 * ds), 0.8f, #ffff0000);
  drawTestLine(radians(s + 2 * ds), 0.8f, #ffffff00);
  drawTestLine(radians(s + 3 * ds), 0.8f, #ff00ff00);
  drawTestLine(radians(s + 4 * ds), 0.8f, #ff00ffff);
  drawTestLine(radians(s + 5 * ds), 0.8f, #ff0000ff);
  drawTestLine(radians(s + 6 * ds), 0.8f, #ffff00ff);  
}

void test_x_fast_dx_neg_dy_pos()
{
  float s = 4*45;
  float ds = 45.0f / 6;
  drawTestLine(radians(s + 0 * ds), 0.8f, #ff000000);
  drawTestLine(radians(s + 1 * ds), 0.8f, #ffff0000);
  drawTestLine(radians(s + 2 * ds), 0.8f, #ffffff00);
  drawTestLine(radians(s + 3 * ds), 0.8f, #ff00ff00);
  drawTestLine(radians(s + 4 * ds), 0.8f, #ff00ffff);
  drawTestLine(radians(s + 5 * ds), 0.8f, #ff0000ff);
  drawTestLine(radians(s + 6 * ds), 0.8f, #ffff00ff);  
}

void test_x_fast_dx_pos_dy_neg()
{
  float s = 7*45;
  float ds = 45.0f / 6;
  drawTestLine(radians(s + 0 * ds), 0.8f, #ff000000);
  drawTestLine(radians(s + 1 * ds), 0.8f, #ffff0000);
  drawTestLine(radians(s + 2 * ds), 0.8f, #ffffff00);
  drawTestLine(radians(s + 3 * ds), 0.8f, #ff00ff00);
  drawTestLine(radians(s + 4 * ds), 0.8f, #ff00ffff);
  drawTestLine(radians(s + 5 * ds), 0.8f, #ff0000ff);
  drawTestLine(radians(s + 6 * ds), 0.8f, #ffff00ff);   
}

void test_x_fast_dx_neg_dy_neg()
{
  float s = 3*45;
  float ds = 45.0f / 6;
  drawTestLine(radians(s + 0 * ds), 0.8f, #ff000000);
  drawTestLine(radians(s + 1 * ds), 0.8f, #ffff0000);
  drawTestLine(radians(s + 2 * ds), 0.8f, #ffffff00);
  drawTestLine(radians(s + 3 * ds), 0.8f, #ff00ff00);
  drawTestLine(radians(s + 4 * ds), 0.8f, #ff00ffff);
  drawTestLine(radians(s + 5 * ds), 0.8f, #ff0000ff);
  drawTestLine(radians(s + 6 * ds), 0.8f, #ffff00ff);   
}

void test_y_fast_dx_pos_dy_pos()
{
  float s = 1*45;
  float ds = 45.0f / 6;
  drawTestLine(radians(s + 0 * ds), 0.8f, #ff000000);
  drawTestLine(radians(s + 1 * ds), 0.8f, #ffff0000);
  drawTestLine(radians(s + 2 * ds), 0.8f, #ffffff00);
  drawTestLine(radians(s + 3 * ds), 0.8f, #ff00ff00);
  drawTestLine(radians(s + 4 * ds), 0.8f, #ff00ffff);
  drawTestLine(radians(s + 5 * ds), 0.8f, #ff0000ff);
  drawTestLine(radians(s + 6 * ds), 0.8f, #ffff00ff);  
}

void test_y_fast_dx_neg_dy_pos()
{
  float s = 2*45;
  float ds = 45.0f / 6;
  drawTestLine(radians(s + 0 * ds), 0.8f, #ff000000);
  drawTestLine(radians(s + 1 * ds), 0.8f, #ffff0000);
  drawTestLine(radians(s + 2 * ds), 0.8f, #ffffff00);
  drawTestLine(radians(s + 3 * ds), 0.8f, #ff00ff00);
  drawTestLine(radians(s + 4 * ds), 0.8f, #ff00ffff);
  drawTestLine(radians(s + 5 * ds), 0.8f, #ff0000ff);
  drawTestLine(radians(s + 6 * ds), 0.8f, #ffff00ff);  
}

void test_y_fast_dx_pos_dy_neg()
{
  float s = 6*45;
  float ds = 45.0f / 6;
  drawTestLine(radians(s + 0 * ds), 0.8f, #ff000000);
  drawTestLine(radians(s + 1 * ds), 0.8f, #ffff0000);
  drawTestLine(radians(s + 2 * ds), 0.8f, #ffffff00);
  drawTestLine(radians(s + 3 * ds), 0.8f, #ff00ff00);
  drawTestLine(radians(s + 4 * ds), 0.8f, #ff00ffff);
  drawTestLine(radians(s + 5 * ds), 0.8f, #ff0000ff);
  drawTestLine(radians(s + 6 * ds), 0.8f, #ffff00ff);   
}

void test_y_fast_dx_neg_dy_neg()
{
  float s = 5*45;
  float ds = 45.0f / 6;
  drawTestLine(radians(s + 0 * ds), 0.8f, #ff000000);
  drawTestLine(radians(s + 1 * ds), 0.8f, #ffff0000);
  drawTestLine(radians(s + 2 * ds), 0.8f, #ffffff00);
  drawTestLine(radians(s + 3 * ds), 0.8f, #ff00ff00);
  drawTestLine(radians(s + 4 * ds), 0.8f, #ff00ffff);
  drawTestLine(radians(s + 5 * ds), 0.8f, #ff0000ff);
  drawTestLine(radians(s + 6 * ds), 0.8f, #ffff00ff);   
}

void draw()
{
  background(192, 192, 192);
  loadPixels();
  test_x_fast_a_at_origin_dx_positive_dy_positive();
  //test_x_fast_dx_pos_dy_pos();
  //test_x_fast_dx_neg_dy_pos();
  //test_x_fast_dx_pos_dy_neg();
  //test_x_fast_dx_neg_dy_neg();
  //test_y_fast_dx_pos_dy_pos();
  //test_y_fast_dx_neg_dy_pos();
  //test_y_fast_dx_pos_dy_neg();
  //test_y_fast_dx_neg_dy_neg();
  //test_animation_NoClip();
  
  updatePixels();
}
