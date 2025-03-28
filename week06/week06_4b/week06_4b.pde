// week06-4b_arrry_x_y_int_N_for_mousePressed_recycle_for_k
// 從 week04-5 延伸過來 利用 for 迴圈 + 陣列，畫出很多飼料不會動
void setup(){
  size(600, 400);
}

float []x = new float [100]; //有100個x和100個y
float []y = new float [100]; //Java的陣列宣告
int N = 0;

void draw(){
  background(#c0ffee) ; //咖啡色是0不是o
  for(int i = 0; i < N; i++){
    ellipse(x[i], y[i], 8, 8);
    y[i] += 2;
    if(y[i]>400){ //飼料掉到外面，看不到
      for(int k = i; k < N-1; k++)//要回收
      {
      x[k] = x[k+1];
      y[k] = y[k+1];
      }
      N--;
    }
    println(N);
  }
}
void mousePressed(){
  x[N] = mouseX;
  y[N] = mouseY;
  N++;
}
