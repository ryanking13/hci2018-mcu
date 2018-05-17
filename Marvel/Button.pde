import controlP5.*;
import java.util.*;

Button setSearchButton(ControlP5 cp5, int posY) {

  int sizeX = 100;
  int sizeY = 40;
  Button b = cp5.addButton("search")
                .setPosition(width / 2 - sizeX / 2, posY)
                .setSize(sizeX, sizeY);
  
  return b;
}

public void search(int value) {
  hightlightTimeline();
}


ButtonBar setTypeButtons(ControlP5 cp5, ArrayList<String> typeList, int posY) {
  
  int typesCount = typeList.size();
  int sizeX = 100 * typesCount;
  int sizeY = 40;
  
  float posX = width/2 - sizeX / 2;
                 
  ButtonBar bb = cp5.addButtonBar("typeButtons")
                    .setPosition(posX, posY)
                    .setSize(sizeX, sizeY);
                    
  for(int i = 0; i < typesCount; i++) {
    bb.addItem(typeList.get(i), i);
  }
  
  return bb;
}

void typeButtons(int n) {
  Map m = (Map)cp5.get(ButtonBar.class, "typeButtons").getItems().get(n);
  choice.type = (String)m.get("name");
}

ButtonBar setTimelineButtons(ControlP5 cp5, ArrayList<String> movieList, int posY) {

  int moviesCount = movieList.size();
  int posX = 50;
  int sizeY = 150;
  int sizeX = width - posX * 2;
  
  ButtonBar bb = cp5.addButtonBar("timelineButtons")
                   .setPosition(posX, posY)
                   .setSize(sizeX, sizeY);
  
  for(int i = 0; i < moviesCount; i++) {
    bb.addItem(movieList.get(i), i);
  }
                   
  return bb;
}
