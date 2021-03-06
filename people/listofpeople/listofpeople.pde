/* @pjs preload="testimage.png, phil.png", mitch.png, david.png, erin.png, alex.png, sam.png, connie.png, alexis.png, alyssa.png, elizabeth.png; */
person[] persons;
Boolean sizeUp = true;
int a = 0;
int b = 0;
int fillcolor = #056A76;
Boolean createBackground = false;
Boolean lineTrue = true;
String role = " ";
int pos = 0;
void setup() {
  persons =  new person[10];

  size(800, 800);
  background(#056A76);
  createPersons();
}
void draw() {
  background(#056A76);

  createBackgroundColor(role);
  if (lineTrue == true) {
    createLines();
  }
  showFace();

  cursor(HAND);
}

void createLines() {
  persons[0].show();
  persons[1].show();
  persons[2].show();
  persons[3].show();
  persons[4].show();
  persons[5].show();
  persons[6].show();
  persons[7].show();
  persons[8].show();
  persons[9].show();

  line(400, 163, 325, 200); //phil to erin
  line(400, 163, 475, 200); //phil to mitch
  line(475, 268, 550, 300); //mitch to sam
  line(475, 268, 400, 300); //mitch to alexis
  line(350, 268, 400, 300); //erin to alexis
  line(300, 225, 200, 225); //erin to david
  line(300, 268, 200, 300); //erin to connie
  line(300, 268, 200, 400); //erin to elizabeth
  line(300, 268, 275, 400); //erin to alyssa
  line(300, 268, 100, 300); //erin to alex
}

void mousePressed() {
  
  for (int i = 0; i < persons.length; i++) {
    if (sizeUp == true) {
      if (dist(persons[i].x + 30, persons[i].y + 30, mouseX, mouseY) < 30) {
        //  cursor(HAND);
        a = persons[i].x;
        b = persons[i].y;
        // fillcolor = 100;
       // background(100);

        persons[i].x = 150;
        persons[i].y = 0;
        persons[i].xSize = 1; 
        persons[i].ySize = 1;
        createBackground = true;
        role = persons[i].role;

        lineTrue = false;
        pos = i;
      }
    } 
    //setu/p();
  }
}
void mouseClicked() {
}
void keyPressed() {



  

  

  createPersons();
  lineTrue = true;
  background(#056A76);
  createBackground = false;
  //if (keyCode == ' ') {
  //  // sizeUp = false;
  //  clear();
  //  createPersons();
  //  redraw();
  //}
}
void createPersons() {

  persons[0] = new person("name", "Phil Crews Ph.D. Principal Investigator University of California, Santa Cruz Department of Chemistry and Biochemistry ", 0.1, 0.1, 375, 100, 10, loadImage("phil.png")); //phil
  persons[1] = new person("name", "Erin McCauley\nPostdoctoral Fellow", 0.1, 0.1, 375 - 75, 200, 10, loadImage("erin.png")); //erin
  persons[2] = new person("Mitch Crews", "Mitch Crews\nResearch Scientist", 0.1, 0.1, 375 + 75, 200, 10, loadImage("mitch.png")); //mitch
  persons[3] = new person("David Coppage", "David Coppage\nPostbacclaureate Fellow\nJunior Research Specialist", 0.1, 0.1, 375 - 225, 200, 10, loadImage("david.png")); //david
  persons[4] = new person("name", "Alexis Munoz\nUndergraduate Researcher", 0.1, 0.1, 375, 300, 10, loadImage("alexis.png")); //alexis
  persons[5] = new person("name", "Connie Silva\nUndergraduate Researcher", 0.1, 0.1, 375 - 200, 300, 10, loadImage("connie.png")); //connie
  persons[6] = new person("name", "Elizabeth Normand\nPostbacclaureate", 0.1, 0.1, 375 - 200, 400, 10, loadImage("elizabeth.png")); //elizabeth
  persons[7] = new person("name", "Alyssa Thompson\nUndergraduate Researcher", 0.1, 0.1, 375 - 125, 400, 10, loadImage("alyssa.png")); //alyssa
  persons[8] = new person("name", "Alexandra Borowy\nUndergraduate Researcher", 0.1, 0.1, 375 - 300, 300, 10, loadImage("alex.png")); //alex
  persons[9] = new person("Sam Mussetter", "Sam Mussetter\nVolunteer", 0.1, 0.1, 375 + 150, 300, 10, loadImage("sam.png")); //sam
}

void createBackgroundColor(String role) {
  if (createBackground == true) {
    pushMatrix();

    textSize(12);
    fill(255);
    text(role, width/2.5 + 50, 700, 200, 300);
    popMatrix();
  } else {
  
  background(#056A76);
  }
}
void showFace() {
  persons[pos].show();
}
