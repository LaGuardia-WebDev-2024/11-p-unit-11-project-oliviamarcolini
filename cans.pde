var cansX = [];
var zombieBorder = ["୧ ‧₊˚ 🥩🦴 ⋅",  "⚠︎⋆˚࿔ ☣ ｡𖦹°‧♰", "(っ´ཀ`)っ", "♰‧°𖦹｡ ☣ ࿔˚⋆⚠︎", "⋅ 🦴🥩 ˚₊‧ ୧"];
var borderX = [20, 130, 260, 350, 480];

var canAnswer = 0;
var numberOfCans = 0;
var canSceneEnd = 0;

var clickCan1 = 0;
var clickCan2 = 0;
var clickCan3 = 0;
var clickCan4 = 0;
var clickCan5 = 0;


setup = function() {
    size(600, 400);
  
  for(var i = 10; i < 500; i+=120){
    cansX.push(i);
  }
 
  console.log(cansX);
};


draw = function(){
  background(255,255,255);
  
  textSize(20);
  fill(0, 0, 0);
  for(i = 0; i < zombieBorder.length; i++){
  text(zombieBorder[i], borderX[i], 375);
  }
  
  
/*
if(mousePressed){
showXYPositions();
}
*/

  fill(100,100,0);
  text("you have " + numberOfCans + " cans", 10, 300);
 
  
  for(var i = 0; i < cansX.length; i++){
    textSize(100);
    text("🥫", cansX[i], 210);
  }
  
  if(canAnswer == 1){
    textSize(20);
    text("Oh no it looks like this is empty", 10, 50);
  };
  
  if(canAnswer == 2){
    textSize(20);
    text("Jackpot, you’ve never been happier at the sight of canned beans!",  10, 50);
  }
  
  if(cansX.length < 1){
  canSceneEnd = 1;
  }
  
  if(canSceneEnd == 1){
    fill(0, 0, 100);
    text("yes a shark, it makes sense, \n it's not because i needed a custom function.", 10, 100);
    
    fill(0, 0, 0);
    if(numberOfCans == 0){
        text("Bummer, you didn't find any food. \n Sorry to break it to you but you'll probably die soon.", 10, 150);
    }
    
    if(numberOfCans == 1){
        text("Yay, you found 1 can. You can probably survive for a day or two...", 10, 150);
    }
    
    if(numberOfCans == 2 || numberOfCans == 3){
        text("Yay, you found " + numberOfCans + " cans. That should be good for a few days.", 10, 150);
    }
    
    if(numberOfCans >= 4){
        text("Wow, that was a lucky scavenge. You found " + numberOfCans + " cans.", 10, 150);
    }
    
    drawShark(mouseX - 200, mouseY - 150);
  }
  
};

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
};


var removeCan = function(removeThis){
  var newArray = [];
  for(var i = 0; i<cansX.length; i++){
    if(cansX[i] != removeThis){
      newArray.push(cansX[i]);
    }
  }
  return(newArray);
};

mouseClicked = function(){
  
  if(mouseX > 30 && mouseX < 88 && clickCan1 == 0){
    fill(0,0,0);
    cansX = removeCan(10);
    
    clickCan1 = 1;
    
    canAnswer = round(random(1, 2));
    if(canAnswer == 2){
      numberOfCans = numberOfCans + 1
  }
  }
  else if(mouseX > 150 && mouseX < 206 && clickCan2 == 0){
    fill(0,0,0);
    cansX = removeCan(130);
    
    clickCan2 = 1;
    
    canAnswer = round(random(1, 2));
    if(canAnswer == 2){
      numberOfCans = numberOfCans + 1
  }
  }
  else if(mouseX > 268 && mouseX < 327 && clickCan3 == 0){
    fill(0,0,0);
    cansX = removeCan(250);
    
    clickCan3 = 1;
    
    canAnswer = round(random(1, 2));
    if(canAnswer == 2){
      numberOfCans = numberOfCans + 1
  }
  }
  else if(mouseX > 390 && mouseX < 447 && clickCan4 == 0){
    fill(0,0,0);
    cansX = removeCan(370);
    
    clickCan4 = 1;
    
    canAnswer = round(random(1, 2));
    if(canAnswer == 2){
      numberOfCans = numberOfCans + 1
  }
  }
  else if(mouseX > 510 && mouseX < 567 && clickCan5 == 0){
    fill(0,0,0);
    cansX = removeCan(490);
    
    clickCan5 = 1;
    
    canAnswer = round(random(1, 2));
    if(canAnswer == 2){
      numberOfCans = numberOfCans + 1
  }
  }
 
};

var drawShark = function(sharkX, sharkY){
    fill(150, 176, 176);
    noStroke();
    ellipse(sharkX + 315, sharkY + 146, 200, 60);
    triangle(sharkX + 290, sharkY + 121, sharkX + 338, sharkY + 89, sharkX + 343, sharkY + 117);
    triangle(sharkX + 390, sharkY + 144, sharkX + 445, sharkY + 144, sharkX + 473, sharkY + 114);
    triangle(sharkX + 390, sharkY + 144, sharkX + 445, sharkY + 144, sharkX + 473, sharkY + 174);
    triangle(sharkX + 250, sharkY + 163, sharkX + 290, sharkY + 169, sharkX + 290, sharkY + 190);
    triangle(sharkX + 378, sharkY + 163, sharkX + 400, sharkY + 168, sharkX + 390, sharkY + 175);
    fill(200, 200, 200);
    ellipse(sharkX + 315, sharkY + 159, 175, 30);
    strokeWeight(10);
    stroke(0, 0, 0);
    point(sharkX + 234, sharkY + 142);
    stroke(120, 120, 120);
    strokeWeight(4);
    line(sharkX + 275, sharkY + 165, sharkX + 279, sharkY + 146);
    line(sharkX + 267, sharkY + 161, sharkX + 273, sharkY + 144);
    line(sharkX + 260, sharkY + 157, sharkX + 266, sharkY + 145)
  };
