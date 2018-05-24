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
  public int iconSize;
  public PImage img;
  public ArrayList<ExplanationIcon> icons;
  
  public ExplanationCanvas(int posX, int posY, int sizeY, int imageSizeX, int imageSizeY, int iconSize) {
    this.posY = posY;
    this.posX = posX;
    this.sizeX = width - 2*posX;
    this.sizeY = sizeY;
    this.imageSizeX = imageSizeX;
    this.imageSizeY = imageSizeY;
    this.iconSize = iconSize;
  }
  
  public void updateIcons(ArrayList<ExplanationIcon> icons) {
    this.icons = icons;
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
      
    if (icons != null){
      for(int i = 0; i < icons.size(); i++) {
        ExplanationIcon icon = icons.get(i);
        PGraphics mask = createGraphics(icon.icon.width, icon.icon.height);
        mask.beginDraw();
        mask.smooth();
        mask.background(0);
        mask.fill(255);
        mask.ellipse(icon.icon.width/2, icon.icon.height/2, icon.icon.width, icon.icon.height);
        mask.endDraw();
        
        icon.icon.mask(mask);
        image(icon.icon, posX + i*(iconSize + 10), posY, iconSize, iconSize);
      }
    }
     
  }
}

ExplanationBox setExplanationBox(ControlP5 cp5, int posY) {
  
  int posX = 50;
  int sizeY = 500;
  
  int imageSizeX = 200;
  int imageSizeY = 400;
  int iconSize = 100;
  
  ExplanationBox eBox = new ExplanationBox();
  
  Textarea textarea = cp5.addTextarea("explanation")
                .setPosition(posX, posY + iconSize)
                .setSize(width - 2*posX - imageSizeX, sizeY)
                .setFont(createFont("NanumGothic",16))
                .setColorBackground(color(0,0,0));
  
  ExplanationCanvas cc = new ExplanationCanvas(posX, posY, sizeY, imageSizeX, imageSizeY, iconSize);
  cc.post();
  cp5.addCanvas(cc);
  
  eBox.textarea = textarea;
  eBox.canvas = cc;
  
  return eBox;
}
