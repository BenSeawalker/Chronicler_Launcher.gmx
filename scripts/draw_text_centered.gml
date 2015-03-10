///draw_text_centered(x,y,text, colour);
var xx,yy,txt,col;
xx = argument0;
yy=argument1;
txt = argument2;
col = argument3;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
    draw_text_colour(xx,yy,txt,col,col,col,col,1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
