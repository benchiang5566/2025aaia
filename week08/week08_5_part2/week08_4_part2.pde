// week08_5_bubble_balloon_part2

void setup(){
  size(500, 400);
}
void draw(){
  background(204);
  ellipse(x, y-s/2, s*0.75, s); // 畫氣球//氣球變瘦+從下方充氣
  if(mousePressed) s+=2; // 一質壓mouse就會變大
  if(mousePressed==false && y>s) y-=2; //沒有按mouse就飛出去被天花板擋住 
}
float x=0, y=0, s=0;// 氣球的座標、大小
void mousePressed(){
  x=mouseX; //氣球的座標
  y=mouseY;
  s=1; //氣球一開始大小是1
}
