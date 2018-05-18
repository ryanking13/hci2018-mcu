import controlP5.*;

class ExplanationBox {
  public Textarea textarea;
  public ExplanationCanvas canvas;
}

class ExplanationCanvas extends Canvas {
  
  public int posY;
  public int posX;
  public int sizeX;
  public int sizeY;
  public int imageSizeX;
  public int imageSizeY;
  public PImage img;
  
  public ExplanationCanvas(int posX, int posY, int sizeY, int imageSizeX, int imageSizeY) {
    this.posY = posY;
    this.posX = posX;
    this.sizeX = width - 2*posX;
    this.sizeY = sizeY;
    this.imageSizeX = imageSizeX;
    this.imageSizeY = imageSizeY;
  }
  
  public void updateImage(PImage img){
    this.img = img;
  }
  
  public void draw(PGraphics pg){
    pg.fill(0,0,150,100);
    pg.rect(posX, posY, sizeX, sizeY);
    
    int imgX = posX + sizeX - imageSizeX;
    int imgY = posY;
    if (img != null)
      pg.image(this.img, imgX, imgY, imageSizeX, imageSizeY);
  }
}

ExplanationBox setExplanationBox(ControlP5 cp5, int posY) {
  
  int posX = 50;
  int sizeY = 500;
  
  int imageSizeX = 200;
  int imageSizeY = 400;
  
  ExplanationBox eBox = new ExplanationBox();
  
  Textarea textarea = cp5.addTextarea("explanation")
                .setPosition(posX, posY)
                .setSize(width - 2*posX - imageSizeX, sizeY)
                .setFont(createFont("NanumGothic",16))
                .setColorBackground(color(0,0,0));
  
  ExplanationCanvas cc = new ExplanationCanvas(posX, posY, sizeY, imageSizeX, imageSizeY);
  cc.post();
  cp5.addCanvas(cc);
  
  eBox.textarea = textarea;
  eBox.canvas = cc;
  
  return eBox;
}
