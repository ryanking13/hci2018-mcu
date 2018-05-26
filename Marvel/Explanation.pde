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
  public int year;
  
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
  Ironman2Proto.timelineLength = 150;
  Ironman2Proto.timelinePosX = 0;
  Ironman2Proto.year = 2008;
  Ironman2Proto.image = loadImage("Images/Ironman2Proto.png");
  Ironman2Proto.icons.add(new ExplanationIcon("Images/tony.jpeg", "토니 스타크"));
  Ironman2Proto.icons.add(new ExplanationIcon("Images/ingsen.jpg", "호 잉센"));
  Ironman2Proto.icons.add(new ExplanationIcon("Images/laza.png", "라자"));
  Ironman2Proto.explanation = "토니 스타크는 미국 최고 군수업체인 스타크 인더스트리의 CEO이자 천재 무기 개발자이다. 그가" +
                              "아프가니스탄에서 신형 무기인 제리코 미사일을 시연하고 돌아오는 중 라자가 이끄는 게릴라군" +
                              "에게 납치된다. 이 과정에서 가슴에 부상을 입어 파편조각이 심장에 박히게 되고, 전자석을 이" +
                              "용하여 파편이 더이상 심장에 파고들지 못하게 하여 겨우 목숨을 부지한다. 게릴라군은 그에게" +
                              "제리코 미사일 같은 강력한 무기를 만들라고 지시한다. 그러나 토니 스타크는 그곳에 같이 납치" +
                              "되어있던 잉센과 함께 소형 아크 원자로를 개발하고, 이를 동력으로 하는 철갑 수트이자 아이언" +
                              "맨의 프로토타입인 Mark1입고 탈출한다. 탈출하는 과정에서 잉센은 토니 스타크를 위해 시간을 " +
                              "끌다가 사망하게 된다.";
  explanations.add(Ironman2Proto);
  
  Explanation Ironman2Act = new Explanation("Ironman 2", "아이언맨으로 활동", "Event");
  CColor c1 = new CColor();
  c1.setBackground(color(150,100,0));
  c1.setForeground(color(200,150,0));
  c1.setActive(color(250,200,0));
  Ironman2Act.timelineColor = c1;
  Ironman2Act.timelineLength = 150;
  Ironman2Act.timelinePosX = 200;
  Ironman2Act.year = 2008;
  Ironman2Act.image = loadImage("Images/Ironman2Act.png");
  Ironman2Act.icons.add(new ExplanationIcon("Images/tony.jpeg", "토니 스타크"));
  Ironman2Act.icons.add(new ExplanationIcon("Images/pepper.jpg", "페퍼 포츠"));
  Ironman2Act.icons.add(new ExplanationIcon("Images/laza.png", "라자"));
  Ironman2Act.icons.add(new ExplanationIcon("Images/obedia.jpg", "오베디아 스탠"));
  Ironman2Act.explanation = "게릴라군에게 납치되었을 때 그들이 자신의 회사에서 개발한 무기를 사용하는 것을 보고 토니는 무기" +
                            "를 만드는 것에 회의감을 느끼고, 군수사입을 정리하고자 한다. 그러자 부사장인 오베디아는 토니를 " +
                            "경영에 참여하지 못하게 하고, 몰래 게릴라군과 거래를 한다. 이 사실을 알아챈 토니는 업그레이드한" +
                            "수트인 Mark3로 게릴라군의 무기와 미사일을 모두 파괴한다.";
  explanations.add(Ironman2Act);
    
  Explanation Ironman2Iam = new Explanation("Ironman 2", "내가 \"아이언맨\" 입니다", "Event");
  CColor c2 = new CColor();
  c2.setBackground(color(150,100,0));
  c2.setForeground(color(200,150,0));
  c2.setActive(color(250,200,0));
  Ironman2Iam.timelineColor = c2;
  Ironman2Iam.timelineLength = 150;
  Ironman2Iam.timelinePosX = 400;
  Ironman2Iam.year = 2008;
  Ironman2Iam.image = loadImage("Images/Ironman2Iam.png");
  Ironman2Iam.icons.add(new ExplanationIcon("Images/tony.jpeg", "토니 스타크"));
  Ironman2Iam.icons.add(new ExplanationIcon("Images/pepper.jpg", "페퍼 포츠"));
  Ironman2Iam.icons.add(new ExplanationIcon("Images/obedia.jpg", "오베디아 스탠"));
  Ironman2Iam.explanation = "게릴라군에게 Mark1의 설계도를 알아낸 오베디아는 수트를 제작하지만 소형 아크 원자로를 만들어내는" +
                            "데 실패한다. 소형 아크 원자로를 얻기 위해 토니를 마비시키고 그의 가슴에 있던 소형 아크 원자로를" +
                            "탈취해간다. 토니는 이전에 사용했던 소형 아크 원자로를 가까스로 장착하고, 페퍼 포츠를 지키기 위해" +
                            "오베디아와 싸워서 그를 저지하는데 성공한다. 이 과정에서 아이언맨의 존재가 대중에게 알려진다. 쉴" +
                            "드의 콜슨 요원이 알리바이를 만들어 줬지만, \"내가 아이언맨입니다.\" 라고 하면서 본인이 아이언맨" +
                            "임을 밝힌다.";
  explanations.add(Ironman2Iam);
  
  Explanation Avengers1Cap = new Explanation("Avengers 1", "캡틴 아메리카", "Event");
  CColor c3 = new CColor();
  c3.setBackground(color(150,100,0));
  c3.setForeground(color(200,150,0));
  c3.setActive(color(250,200,0));
  Avengers1Cap.timelineColor = c3;
  Avengers1Cap.timelineLength = 150;
  Avengers1Cap.timelinePosX = 0;
  Avengers1Cap.year = 1942;
  Avengers1Cap.image = loadImage("Images/Avengers1Cap.png");
  Avengers1Cap.icons.add(new ExplanationIcon("Images/cap.png", "스티븐 로저스"));
  Avengers1Cap.icons.add(new ExplanationIcon("Images/pegi.jpg", "페기 카터"));
  Avengers1Cap.icons.add(new ExplanationIcon("Images/ys.png", "요한 슈미트"));
  Avengers1Cap.icons.add(new ExplanationIcon("Images/buki.jpg", "버키 반즈"));
  Avengers1Cap.icons.add(new ExplanationIcon("Images/hward.png", "하워드 스타크"));
  Avengers1Cap.explanation = "스티븐 로저스는 부실한 체격으로 인해 입대에 번번히 떨어지다가, 근성과 희생정신으로 인해 슈퍼솔져" +
                             " 프로젝트에 스카우트 된다. 실험을 통해 인간의 능력을 초월한 신체능력을 얻게 되지만 실제로 임" +
                             "무에 나서기 보단 선전용으로만 쓰이게 된다. 그러던 도중 독일의 과학부대인 히드라 조직에 자신의 친구인 버키 반즈가" +
                             " 잡혀갔다는 소식을 듣고, 홀로 적진에 쳐들어가 버키 반즈를 비롯한 포로들" + 
                             " 구출한다. 이 과정에서 히드라가 테서렉트(큐브)를 이용해서 만든 무기들을 만드는 무기공장의 위치를 " +
                             " 알아내고, 하나씩 파괴하기 시작한다. 마지막 공장을 파괴하고 스컬을 무찌르는 과정에서 테서렉트는 바" + 
                             "다에 빠지게 되고, 스티븐 로저스는 전투기와 함께 빙하에 박히게 된다. 이후 테서렉트는 스티븐 로저스" +
                             "의 흔적을 쫓던 하워드 스타크에 의해 발견된다.";
  explanations.add(Avengers1Cap);
  
  Explanation Avengers1Iron = new Explanation("Avengers 1", "아이언맨", "Event");
  CColor c4 = new CColor();
  c4.setBackground(color(150,100,0));
  c4.setForeground(color(200,150,0));
  c4.setActive(color(250,200,0));
  Avengers1Iron.timelineColor = c4;
  Avengers1Iron.timelineLength = 150;
  Avengers1Iron.timelinePosX = 200;
  Avengers1Iron.year = 2008;
  Avengers1Iron.image = loadImage("Images/Avengers1Iron.jpg");
  Avengers1Iron.icons.add(new ExplanationIcon("Images/tony.jpeg", "토니 스타크"));
  Avengers1Iron.icons.add(new ExplanationIcon("Images/pepper.jpg", "페퍼 포츠"));
  Avengers1Iron.icons.add(new ExplanationIcon("Images/nat.jpeg", "나타샤 로마노프"));
  Avengers1Iron.icons.add(new ExplanationIcon("Images/rode.png", "제임스 로드"));
  Avengers1Iron.icons.add(new ExplanationIcon("Images/nick.png", "닉 퓨리"));
  Avengers1Iron.explanation = "";
  explanations.add(Avengers1Iron);
  
  Explanation Avengers1Hulk = new Explanation("Avengers 1", "헐크", "Event");
  CColor c5 = new CColor();
  c5.setBackground(color(150,100,0));
  c5.setForeground(color(200,150,0));
  c5.setActive(color(250,200,0));
  Avengers1Hulk.timelineColor = c5;
  Avengers1Hulk.timelineLength = 150;
  Avengers1Hulk.timelinePosX = 400;
  Avengers1Hulk.year = 2008;
  Avengers1Hulk.image = loadImage("Images/Avengers1Hulk.png");
  Avengers1Hulk.icons.add(new ExplanationIcon("Images/bb.jpeg", "브루스 배너"));
  Avengers1Hulk.explanation = "";
  explanations.add(Avengers1Hulk);
  
  Explanation Avengers1TR = new Explanation("Avengers 1", "토르와 로키", "Event");
  CColor c6 = new CColor();
  c6.setBackground(color(150,100,0));
  c6.setForeground(color(200,150,0));
  c6.setActive(color(250,200,0));
  Avengers1TR.timelineColor = c5;
  Avengers1TR.timelineLength = 150;
  Avengers1TR.timelinePosX = 600;
  Avengers1TR.year = 2011;
  Avengers1TR.image = loadImage("Images/Avengers1TR.png");
  Avengers1TR.icons.add(new ExplanationIcon("Images/thor.png", "토르"));
  Avengers1TR.icons.add(new ExplanationIcon("Images/roki.png", "로키"));
  Avengers1TR.icons.add(new ExplanationIcon("Images/odin.png", "오딘"));
  Avengers1TR.explanation = "";
  explanations.add(Avengers1TR);
 
  
  
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
