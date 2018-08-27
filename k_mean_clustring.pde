
k[] mean=new k[3];
point[] points=new point[300];
void setup(){
size(450,450);
background(255);
for(int i=0;i<300;i++){
  if(i<100)
points[i]=new point(0,100,0,100);
else if(i>=100 && i<200)
points[i]=new point(300,400,0,100);
else if(i>=200 && i<300)
points[i]=new point(300,400,300,400);
//points[i]=new point(0,width,0,height);
}
for(int i=0;i<3;i++)
mean[i]=new k();
}


void draw(){
  background(255);
//for(int i=0;i<300;i++)
//points[i].show(1);
//for(int i=0;i<3;i++)
//mean[i].show();
for(int i=0;i<300;i++){
float d1,d2,d3;
d1=dist(points[i].x,points[i].y,mean[0].x,mean[0].y);
d2=dist(points[i].x,points[i].y,mean[1].x,mean[1].y);
d3=dist(points[i].x,points[i].y,mean[2].x,mean[2].y);
if(d1<=d2 && d1<=d3)
mean[0].ad(points[i]);
else if(d2<=d1 && d2<=d3)
mean[1].ad(points[i]);
else if(d3<=d2 && d3<=d1)
mean[2].ad(points[i]);
}
for(int i=0;i<3;i++){
 for(point s:mean[i].p){
 s.show(i+1);
 
 }
mean[i].show();
}
mean[0].update();
mean[1].update();
mean[2].update();

delay(1000);


}