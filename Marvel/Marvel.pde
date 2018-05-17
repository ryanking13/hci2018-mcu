import controlP5.*;
import java.util.*;

ControlP5 cp5;

void setup() {
  size(1280, 900);
  cp5 = new ControlP5(this);
  
  ArrayList<String> targetMovieList = new ArrayList<String>();
  ArrayList<String> previousMovieList = new ArrayList<String>();
  targetMovieList.add("Avengers 3");
  
  previousMovieList.add("Avengers 1");
  previousMovieList.add("Avengers 2");
  previousMovieList.add("Ironman 1");
  previousMovieList.add("Ironman 2");
  previousMovieList.add("Ironman 3");
  previousMovieList.add("Captain America");
  
  ArrayList<String> typeList = new ArrayList<String>();
  typeList.add("Event");
  typeList.add("Character");
  
  setMovieList(cp5, targetMovieList, 300, 40);
  setTypeCheckBox(cp5, typeList);
  setTimelineCheckBox(cp5, previousMovieList);
  setExplanationBox(cp5);
}

void draw() {
  background(0);
}
