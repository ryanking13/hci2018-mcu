import controlP5.*;
import java.util.*;

ControlP5 cp5;
ScrollableList movieSelectList;
ButtonBar typeButtons;
Button searchButton;
//ButtonBar movieTimeline;
CheckBox movieTimeline;
Choice choice;
ExplanationBox eBox;

ArrayList<String> targetMovieList;
ArrayList<String> previousMovieList;
ArrayList<String> typeList;
ArrayList<Explanation> explanations;

void setup() {
  size(1280, 1000);
  cp5 = new ControlP5(this);
  choice = new Choice();
  
  targetMovieList = new ArrayList<String>();
  targetMovieList.add("Avengers 3");
  targetMovieList.add("Captain Marvel");
  
  previousMovieList = new ArrayList<String>();
  previousMovieList.add("Avengers 1");
  previousMovieList.add("Avengers 2");
  previousMovieList.add("Ironman 1");
  previousMovieList.add("Ironman 2");
  previousMovieList.add("Ironman 3");
  previousMovieList.add("Captain America");
  
  typeList = new ArrayList<String>();
  typeList.add("Event");
  typeList.add("Character");
  
  explanations = getExplanations();
  
  movieSelectList = setMovieList(cp5, targetMovieList, 50);
  //setTypeCheckBox(cp5, typeList);
  typeButtons = setTypeButtons(cp5, typeList, 100);
  searchButton = setSearchButton(cp5, 150);
  //movieTimeline = setTimelineButtons(cp5, previousMovieList, 200);
  movieTimeline = setTimelineCheckBox(cp5, previousMovieList, 200);
  eBox = setExplanationBox(cp5, 400);
  
  movieSelectList.bringToFront();
}

void draw() {
  background(0);
}


/* handlers */

void hightlightTimeline() {
  
  CColor highlightColor = new CColor();
  CColor normalColor = new CColor();
  highlightColor.setBackground(color(200,0,0));
  normalColor.setBackground(color(0, 45, 90));
  
  List timeline = movieTimeline.getItems();
  
  for(int i = 0; i < timeline.size(); i++) {
    Toggle box = (Toggle)timeline.get(i);
    String movieName = (String)box.getName();
    
    boolean found = false;
    for(int j = 0; j < explanations.size(); j++) {
      Explanation expl = explanations.get(j);
      if(expl.targetMovieName == choice.movie && expl.ownMovieName == movieName) {
        box.setColor(highlightColor);
        box.unlock();
        
        found = true;
        break;
      }
    }
    
    if(!found) {
      box.setColor(normalColor);
      box.setValue(0);
      box.lock();
    }
  }
}

void onTimelineClick(String movieName) {
  
  CColor highlightColor = new CColor();
  CColor normalColor = new CColor();
  highlightColor.setBackground(color(200,0,0));
  normalColor.setBackground(color(0, 45, 90));
  
  List timeline = movieTimeline.getItems();
  
  for(int i = 0; i < timeline.size(); i++) {
    Toggle box = (Toggle)timeline.get(i);
    String toggleName = (String)box.getName();
    
    if (toggleName != movieName) {
      box.setValue(0);
    }
  }
    
  for(int j = 0; j < explanations.size(); j++) {
    Explanation expl = explanations.get(j);
    if(expl.targetMovieName == choice.movie && expl.ownMovieName == movieName) {
      eBox.textarea.setText(expl.explanation);
      eBox.canvas.updateImage(expl.image);
    }
  }
}
