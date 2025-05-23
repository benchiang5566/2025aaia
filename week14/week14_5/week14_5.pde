// week14_5_sound
// 選單 Sketch - Library - Mange Library...
// 安裝 Sound 後，開始寫
// 選單 File - Examples 選 Libraries 核心函式庫 Sound - sounfile
// 在自己寫
import processing.sound.*; // Java 使用 Sound 外掛
SoundFile music; // 宣告一個變數 music
void setup(){
  size(640, 360);  // 記得要把音樂檔，拉到程式裏
  music = new SoundFile(this, "In Game Music.mp3");
  music.play(); // play()播放
}
void draw(){
  // 這裡是空白的
}
