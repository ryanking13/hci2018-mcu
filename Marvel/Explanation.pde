import java.util.*;

class Explanation {
  public String targetMovieName;
  public String name;
  public String type; // Event or Character
  public CColor timelineColor;
  public int timelineLength;
  public int timelinePosX;
  public String explanation; // maybe this variable can be implemented more complex way
  public PImage image;
  public ArrayList<ExplanationIcon> icons;
  
  public Explanation(String target, String name, String type) {
    this.targetMovieName = target;
    this.name = name;
    this.type = type;
    this.icons = new ArrayList<ExplanationIcon>();
  }
}

class ExplanationIcon {
  PImage icon;
  String description;
  
  public ExplanationIcon(String iconPath, String description) {
    this.icon = loadImage(iconPath);
    this.description = description;
  }
}

ArrayList<Explanation> getExplanations() {
  ArrayList<Explanation> explanations = new ArrayList<Explanation>();
  
  Explanation avengers1BigEvent = new Explanation("Avengers 1", "어마어마한 이벤트", "Event");
  CColor c0 = new CColor();
  c0.setBackground(color(150,100,0));
  c0.setForeground(color(200,150,0));
  c0.setActive(color(250,200,0));
  avengers1BigEvent.timelineColor = c0;
  avengers1BigEvent.timelineLength = 50;
  avengers1BigEvent.timelinePosX = 100;
  avengers1BigEvent.explanation = "블라블라";
  avengers1BigEvent.image = loadImage("Images/ironman.jpg");
  avengers1BigEvent.icons.add(new ExplanationIcon("Images/ironman.jpg", "ironman"));
  avengers1BigEvent.icons.add(new ExplanationIcon("Images/ironman.jpg", "ironman"));
  explanations.add(avengers1BigEvent);
  
  Explanation Ironman2BigEvent = new Explanation("Ironman 2", "무시무시한 이벤트", "Event");
  CColor c1 = new CColor();
  c1.setBackground(color(50,100,0));
  c1.setForeground(color(100,200,0));
  c1.setActive(color(150,250,0));
  Ironman2BigEvent.timelineColor = c1;
  Ironman2BigEvent.timelineLength = 150;
  Ironman2BigEvent.timelinePosX = 200;
  Ironman2BigEvent.explanation = "솰라솰라";
  Ironman2BigEvent.image = loadImage("Images/ironman.jpg");
  explanations.add(Ironman2BigEvent);
  
  
  //Explanation avengers3Avengers1 = new Explanation("Avengers 3", "Avengers 1");
  //avengers3Avengers1.explanation = "어벤져스1 짱짱";
  //avengers3Avengers1.image = loadImage("Images/ironman.jpg");
  //explanations.add(avengers3Avengers1);
  
  //Explanation avengers3Ironman2 = new Explanation("Avengers 3", "Ironman 2");
  //avengers3Ironman2.explanation = "아이먼맨2 짱짱";
  //explanations.add(avengers3Ironman2);  
  
  return explanations;
}
