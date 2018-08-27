class point{

int x,y;

point(int a,int b,int c,int d){

x=floor(random(a,b));
y=floor(random(c,d));

}
void show(int i){
 stroke(0);
 strokeWeight(0);
if(i==1)
fill(255,0,0);
if(i==2)
fill(0,255,0);
if(i==3)
fill(0,0,255);
ellipse(x,y,10,10);

}



}