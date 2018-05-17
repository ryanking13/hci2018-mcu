import controlP5.*;

void setExplanationBox(ControlP5 cp5, int posY) {
  
  int posX = 50;
  int sizeY = 500;
  Textarea textarea = cp5.addTextarea("explanation")
                .setPosition(posX, posY)
                .setSize(width - 2*posX, sizeY)
                .setFont(createFont("arial",16))
                .setColorBackground(color(0,0,255,128));
                
                
  textarea.setText("Lorem Ipsum is simply dummy text of the printing and typesetting"
                  +" industry. Lorem Ipsum has been the industry's standard dummy text"
                  +" ever since the 1500s, when an unknown printer took a galley of type"
                  +" and scrambled it to make a type specimen book. It has survived not"
                  +" only five centuries, but also the leap into electronic typesetting,"
                  +" remaining essentially unchanged. It was popularised in the 1960s"
                  +" with the release of Letraset sheets containing Lorem Ipsum passages,"
                  +" and more recently with desktop publishing software like Aldus"
                  +" PageMaker including versions of Lorem Ipsum."
                  );
}
