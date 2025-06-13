// week17_1_zongzi_part1
// 修改自 week04_5_fishX_fishY_dx_dy_dist
// 修改自 week06_4b_array_x_y_int_N_for_mousePressed_recycle_for_k
// 修改自 week10_1_bubble_happy_part2

PImage zongzi;
void setup(){
  size(500, 500);
  zongzi = loadImage("zongzi.png"); // 剛剛有把圖檔拉近程式碼，存進速寫本
}
void draw(){
  background(204);
  imageMode(CENTER);
  // image(zongzi, 0, 0); // 好大的粽子 1024x1024，要畫小以點
  // image(zongzi, 0, 0, 100, 100); // 在 0, 0 座標，畫出 100 x 100 的粽子
  image(zongzi, mouseX, mouseY, 100, 100); // 在 0, 0 座標，畫出 mouse 的座標
}
