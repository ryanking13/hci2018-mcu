import controlP5.*;
import java.util.*;


CheckBox setTypeCheckBox(ControlP5 cp5, ArrayList<String> typeList) {
  
  int numTypes = typeList.size();
  int sizeX = 50;
  int sizeY = 50;
  
  float posX = width/2 - sizeX * (2 * numTypes - 1) / 2;
  int posY = 100;
  
  CheckBox cb = cp5.addCheckBox("typeCheckBox")
                   .setPosition(posX, posY)
                   .setSize(sizeX, sizeY)
                   .setSpacingColumn(sizeX);
                   
  cb.setItemsPerRow(numTypes);
  
  for(int i = 0; i < numTypes; i++) {
    cb.addItem(typeList.get(i), i);
  }
                          
  return cb;
}


CheckBox setTimelineCheckBox(ControlP5 cp5, ArrayList<String> movieList) {
  
  
  int numMovies = movieList.size();
  int padX = 50;
  int padY = 200;
  int sizeY = 150;
  int sizeX = (width - padX*2) / numMovies;
  
  CheckBox cb = cp5.addCheckBox("timelineCheckBox")
                   .setPosition(padX, padY)
                   .setSize(sizeX, sizeY);
                   
  cb.setItemsPerRow(numMovies);
  
  for(int i = 0; i < numMovies; i++) {
    cb.addItem(movieList.get(i), i);
  }
                   
  return cb;
}
