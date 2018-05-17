import controlP5.*;
import java.util.*;

ScrollableList setMovieList(ControlP5 cp5, ArrayList<String> movieList, int sizeX, int sizeY) {
  
  ScrollableList sl = cp5.addScrollableList("movieListDropDown")
                        .setPosition(width/2 - sizeX/2, 50)
                        .setSize(sizeX, height)
                        .setBarHeight(sizeY)
                        .setItemHeight(sizeY)
                        .addItems(movieList)
                        .close();            
                       
  return sl;
}

/* example code */
void movieListDropDown(int n) {
  /* request the selected item based on index n */
  println(n, cp5.get(ScrollableList.class, "movieListDropDown").getItem(n));
  
  /* here an item is stored as a Map  with the following key-value pairs:
   * name, the given name of the item
   * text, the given text of the item by default the same as name
   * value, the given value of the item, can be changed by using .getItem(n).put("value", "abc"); a value here is of type Object therefore can be anything
   * color, the given color of the item, how to change, see below
   * view, a customizable view, is of type CDrawable 
   */
  
   CColor c = new CColor();
  c.setBackground(color(255,0,0));
  cp5.get(ScrollableList.class, "movieListDropDown").getItem(n).put("color", c);
  
}
