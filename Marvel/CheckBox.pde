import controlP5.*;
import java.util.*;

CheckBox setTimelineCheckBox(ControlP5 cp5, ArrayList<String> movieList) {
  
  int numMovies = movieList.size();
  
  CheckBox cb = cp5.addCheckBox("timelineCheckBox")
                   .setPosition(100, 200)
                   .setSize(100, 200);
                   
  cb.setItemsPerRow(numMovies);
  
  for(int i = 0; i < numMovies; i++) {
    cb.addItem(movieList.get(i), i);
  }
                   
  return cb;
}
