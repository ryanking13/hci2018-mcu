import controlP5.*;
import java.util.*;

ScrollableList setMovieList(ControlP5 cp5, ArrayList<String> movieList, int posY) {
  
  int sizeX = 300;
  int sizeY = 50;
  //int posX = width/2 - sizeX/2;
  int posX = width/2 - sizeX;
  
  ScrollableList sl = cp5.addScrollableList("movieListDropDown")
                        .setPosition(posX, posY)
                        .setSize(sizeX, height)
                        .setBarHeight(sizeY)
                        .setItemHeight(sizeY)
                        .addItems(movieList)
                        .close();            
                       
  return sl;
}

/* when select movie on dropdown */
void movieListDropDown(int n) {
  
  Map m = cp5.get(ScrollableList.class, "movieListDropDown").getItem(n);
  choice.movie = (String)m.get("name");
  
  // set color
  CColor c = new CColor();
  c.setBackground(color(255,0,0));
  cp5.get(ScrollableList.class, "movieListDropDown").getItem(n).put("color", c);
  
}
