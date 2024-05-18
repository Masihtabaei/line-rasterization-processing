public final class LineRasterizer
{
  private static final void drawLine(int[] framebuffer, int w, int2 a, int2 b, int col)
  {
    int y = 0;
    int err = 0;
    for (int x = a.x; x <= b.x; x++)
    {
      if (err >= b.x)
      {
        y++;
        err += -2 * b.x;
      }
      err += 2 * b.y;
      framebuffer[y * w + x] = col;
    }
  }
  
  private static final void drawLine(int[] frameBuffer, int widthOfDisplayWindow, int2 destinationPointAsVector, int pixelColor){
    
  }

  public static final void drawLine(int[] framebuffer, int w, int h, int2 a, int2 b, int col)
  {
    ClipResult clip = LineClipping.clip(a, b, w-1, h-1);
    if (clip.cull)
    {
      return;
    }

    drawLine(framebuffer, w, b, col);
  }
}
