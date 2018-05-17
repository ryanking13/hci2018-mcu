import controlP5.*;

void setExplanationBox(ControlP5 cp5) {
  
  int padX = 50;
  int posY = 400;
  int sizeY = 400;
  Textarea textarea = cp5.addTextarea("explanation")
                .setPosition(padX, posY)
                .setSize(width - 2*padX, sizeY)
                .setColorBackground(color(255));
}
