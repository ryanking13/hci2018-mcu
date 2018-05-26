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
  
  Explanation Ironman2Proto = new Explanation("Ironman 2", "아이언맨 프로토타입 Mark1 개발", "Event");
  CColor c0 = new CColor();
  c0.setBackground(color(150,100,0));
  c0.setForeground(color(200,150,0));
  c0.setActive(color(250,200,0));
  Ironman2Proto.timelineColor = c0;
  Ironman2Proto.timelineLength = 100;
  Ironman2Proto.timelinePosX = 0;
  Ironman2Proto.image = loadImage("Images/Ironman2Proto.png");
  Ironman2Proto.icons.add(new ExplanationIcon("Images/tony.jpeg", "토니 스타크"));
  Ironman2Proto.icons.add(new ExplanationIcon("Images/ingsen.jpg", "호 잉센"));
  Ironman2Proto.icons.add(new ExplanationIcon("Images/laza.png", "라자"));
  Ironman2Proto.explanation = "토니 스타크는 미국 최고 군수업체인 스타크 인더스트리의 CEO이자 천재 무기 개발자이다. 그가 아프가니스탄에서 신형 무기인 제리코 미사일을 시연하고 돌아오는 중 라자가 이끄는 게릴라군에게 납치된다. 이 과정에서 가슴에 부상을 입어 파편조각이 심장에 박히게 되고, 전자석을 이용하여 파편이 더이상 심장에 파고들지 못하게 하여 겨우 목숨을 부지한다. 게릴라군은 그에게 제리코 미사일 같은 강력한 무기를 만들라고 지시한다. 그러나 토니 스타크는 그곳에 같이 납치되어있던 잉센과 함께 소형 아크 원자로를 개발하고, 이를 동력으로 하는 철갑 수트이자 아이언맨의 프로토타입인 Mark1입고 탈출한다. 탈출하는 과정에서 잉센은 토니 스타크를 위해 시간을 끌다가 사망하게 된다.";
  explanations.add(Ironman2Proto);
  
  Explanation Ironman2Act = new Explanation("Ironman 2", "아이언맨으로 활동", "Event");
  CColor c1 = new CColor();
  c1.setBackground(color(150,100,0));
  c1.setForeground(color(200,150,0));
  c1.setActive(color(250,200,0));
  Ironman2Act.timelineColor = c1;
  Ironman2Act.timelineLength = 100;
  Ironman2Act.timelinePosX = 150;
  Ironman2Act.image = loadImage("Images/Ironman2Act.png");
  Ironman2Act.icons.add(new ExplanationIcon("Images/tony.jpeg", "토니 스타크"));
  Ironman2Act.icons.add(new ExplanationIcon("Images/pepper.jpg", "페퍼 포츠"));
  Ironman2Act.icons.add(new ExplanationIcon("Images/laza.png", "라자"));
  Ironman2Act.icons.add(new ExplanationIcon("Images/obedia.jpg", "오베디아 스탠"));
  Ironman2Act.explanation = "게릴라군에게 납치되었을 때 그들이 자신의 회사에서 개발한 무기를 사용하는 것을 보고 토니는 무기를 만드는 것에 회의감을 느끼고, 군수사입을 정리하고자 한다. 그러자 부사장인 오베디아는 토니를 경영에 참여하지 못하게 하고, 몰래 게릴라군과 거래를 한다. 이 사실을 알아챈 토니는 업그레이드한 수트인 Mark3로 게릴라군의 무기와 미사일을 모두 파괴한다.";
  explanations.add(Ironman2Act);
    
  Explanation Ironman2Iam = new Explanation("Ironman 2", "내가 \"아이언맨\" 입니다", "Event");
  CColor c2 = new CColor();
  c2.setBackground(color(150,100,0));
  c2.setForeground(color(200,150,0));
  c2.setActive(color(250,200,0));
  Ironman2Iam.timelineColor = c2;
  Ironman2Iam.timelineLength = 100;
  Ironman2Iam.timelinePosX = 300;
  Ironman2Iam.image = loadImage("Images/Ironman2Iam.png");
  Ironman2Iam.icons.add(new ExplanationIcon("Images/tony.jpeg", "토니 스타크"));
  Ironman2Iam.icons.add(new ExplanationIcon("Images/pepper.jpg", "페퍼 포츠"));
  Ironman2Iam.icons.add(new ExplanationIcon("Images/obedia.jpg", "오베디아 스탠"));
  Ironman2Iam.explanation = "게릴라군에게 Mark1의 설계도를 알아낸 오베디아는 수트를 제작하지만 소형 아크 원자로를 만들어내는데 실패한다. 소형 아크 원자로를 얻기 위해 토니를 마비시키고 그의 가슴에 있던 소형 아크 원자로를 탈취해간다. 토니는 이전에 사용했던 소형 아크 원자로를 가까스로 장착하고, 페퍼 포츠를 지키기 위해 오베디아와 싸워서 그를 저지하는데 성공한다. 이 과정에서 아이언맨의 존재가 대중에게 알려진다. 쉴드의 콜슨 요원이 알리바이를 만들어 줬지만, \"내가 아이언맨입니다.\" 라고 하면서 본인이 아이언맨임을 밝힌다.";
  explanations.add(Ironman2Iam);
  
  /*Explanation avengers1BigEvent = new Explanation("Avengers 1", "어마어마한 이벤트", "Event");
  CColor c0 = new CColor();
  c0.setBackground(color(150,100,0));
  c0.setForeground(color(200,150,0));
  c0.setActive(color(250,200,0));
  avengers1BigEvent.timelineColor = c0;
  avengers1BigEvent.timelineLength = 50;
  avengers1BigEvent.timelinePosX = 100;
  avengers1BigEvent.image = loadImage("Images/ironman.jpg");
  avengers1BigEvent.icons.add(new ExplanationIcon("Images/ironman.jpg", "ironman"));
  avengers1BigEvent.icons.add(new ExplanationIcon("Images/ironman.jpg", "ironman2"));
  avengers1BigEvent.explanation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." + 
                                  "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure" +
                                  " dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non" +
                                  " proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  
  // for scroll test
  for(int i = 0; i < 5; i++)
    avengers1BigEvent.explanation = avengers1BigEvent.explanation + avengers1BigEvent.explanation;

  explanations.add(avengers1BigEvent);

  Explanation avengers1SmallEvent = new Explanation("Avengers 1", "무시무시한 이벤트", "Event");
  CColor c00 = new CColor();
  c00.setBackground(color(150,100,50));
  c00.setForeground(color(200,150,50));
  c00.setActive(color(250,200,50));
  avengers1SmallEvent.timelineColor = c00;
  avengers1SmallEvent.timelineLength = 150;
  avengers1SmallEvent.timelinePosX = 300;
  avengers1SmallEvent.image = loadImage("Images/ironman.jpg");
  avengers1SmallEvent.icons.add(new ExplanationIcon("Images/ironman.jpg", "ironman"));
  avengers1SmallEvent.icons.add(new ExplanationIcon("Images/ironman.jpg", "ironman2"));
  avengers1SmallEvent.icons.add(new ExplanationIcon("Images/ironman.jpg", "ironman3"));
  avengers1SmallEvent.icons.add(new ExplanationIcon("Images/ironman.jpg", "ironman4"));
  avengers1SmallEvent.icons.add(new ExplanationIcon("Images/ironman.jpg", "ironman5"));
  avengers1SmallEvent.explanation = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." + 
                                  "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure" +
                                  " dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non" +
                                  " proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  
  explanations.add(avengers1SmallEvent);
  
  
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
  explanations.add(Ironman2BigEvent);*/
  
  
  //Explanation avengers3Avengers1 = new Explanation("Avengers 3", "Avengers 1");
  //avengers3Avengers1.explanation = "어벤져스1 짱짱";
  //avengers3Avengers1.image = loadImage("Images/ironman.jpg");
  //explanations.add(avengers3Avengers1);
  
  //Explanation avengers3Ironman2 = new Explanation("Avengers 3", "Ironman 2");
  //avengers3Ironman2.explanation = "아이먼맨2 짱짱";
  //explanations.add(avengers3Ironman2);  
  
  return explanations;
}
