///in_rect(point_x,point_y,rect_x,rect_y,width,height);
var px,py,xx,yy,w,h;
px = argument0;
py = argument1;
xx = argument2;
yy = argument3;
w = argument4;
h = argument5;

//handle inverse rectangle
if(w<0){xx+=w; w*=-1;}
if(h<0){yy+=h; h*=-1;}

if((px>xx && px<(xx+w)) && (py>yy && py<(yy+h))) return true;
return false;
