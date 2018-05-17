import controlP5.*;
import java.util.*;

ControlP5 cp5;
ScrollableList movieSelectList;
ButtonBar typeButtons;
Button searchButton;
ButtonBar movieTimeline;
Choice choice;

ArrayList<String> targetMovieList;
ArrayList<String> previousMovieList;
ArrayList<String> typeList;

void setup() {
  size(1280, 1000);
  cp5 = new ControlP5(this);
  choice = new Choice();
  
  targetMovieList = new ArrayList<String>();
  targetMovieList.add("Avengers 3");
  
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
  
  movieSelectList = setMovieList(cp5, targetMovieList, 50);
  //setTypeCheckBox(cp5, typeList);
  //setTimelineCheckBox(cp5, previousMovieList);
  typeButtons = setTypeButtons(cp5, typeList, 100);
  searchButton = setSearchButton(cp5, 150);
  movieTimeline = setTimelineButtons(cp5, previousMovieList, 200);
  setExplanationBox(cp5, 400);
  
  movieSelectList.bringToFront();
}

void draw() {
  background(0);
}

void hightlightTimeline() {
  List timeline = movieTimeline.getItems();
  
  for(int i = 0; i < timeline.size(); i++) {
    Map m = (Map)timeline.get(i);
    // TODO: highlight timeline according to related movies
  }
}
