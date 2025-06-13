// week17_4_zongzi_part4
// 修改自 week17_3_zongzi_part3
// 要回收粽子，就不會超過100個粽子

PImage zongzi;
void setup(){
  size(500, 500);
  zongzi = loadImage("zongzi.png"); // 剛剛有把圖檔拉近程式碼，存進速寫本
}
//float x, y; // 只有 1 顆粽子
  float []x = new float[100];
  float []y = new float[100];
  int N=0;
void draw(){
  background(204); // 204灰色
  imageMode(CENTER); // 畫圖時，圖片的座標，把他設在中心點
  for(int i=0; i<N; i++){
    if(x[i] > 0){// 有按下 mouse 會設定 x, y，就不會是0，才畫出來
      image(zongzi, x[i], y[i], 100, 100); // 在 0, 0 座標，畫出 x, y 的座標
      y[i]++; // 座標往下，代表粽子往下
        if(y[i]>500){
          for(int k=i+1; k<N; k++){// 粽子撞到地板(高度是 500)，要回收粽子第 i 個粽子，把陣列右邊「搬到左邊」
            x[k-1] = x[k]; // 粽子的總數 -1
            y[k-1] = y[k];
          }
        N--;
      }
    }
  }
}

void mousePressed(){ // 使用 week04 的餵飼料方式，讓粽子往下掉
  x[N] = mouseX;
  y[N] = mouseY;
  N++;
}
