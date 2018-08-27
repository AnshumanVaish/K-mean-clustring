class k{
ArrayList<point> p;
 int x,y; 
  
  k(){
p=new ArrayList<point>();
x=floor(random(width));
y=floor(random(height));
}
void ad(point s){
p.add(s);
}
void show(){
fill(255,0,255);
ellipse(x,y,6,6);


}
void update(){
float sumx=0,sumy=0;
  
for(point k:p){
sumx=k.x+sumx;
sumy=k.y+sumy;
}
x=floor(sumx/p.size());
y=floor(sumy/p.size());
for(int i=0;i<p.size();i++)
p.remove(0);

}

}