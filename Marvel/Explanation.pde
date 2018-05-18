import java.util.*;

class Explanation {
  public String targetMovieName;
  public String ownMovieName;
  // Image?
  public String explanation; // maybe this variable can be implemented more complex way
  public PImage image;
  
  public Explanation(String target, String own) {
    this.targetMovieName = target;
    this.ownMovieName = own;
  }
}

ArrayList<Explanation> getExplanations() {
  ArrayList<Explanation> explanations = new ArrayList<Explanation>();
  
  Explanation avengers3Avengers1 = new Explanation("Avengers 3", "Avengers 1");
  avengers3Avengers1.explanation = "어벤져스1 짱짱";
  avengers3Avengers1.image = loadImage("Images/ironman.jpg");
  explanations.add(avengers3Avengers1);
  
  Explanation avengers3Ironman2 = new Explanation("Avengers 3", "Ironman 2");
  avengers3Ironman2.explanation = "아이먼맨2 짱짱";
  explanations.add(avengers3Ironman2);  
  
  return explanations;
}
