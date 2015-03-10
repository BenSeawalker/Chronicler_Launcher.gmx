///string_clamp(str,width)
var str,w;
str = argument0;
w = argument1;

var c,txt,rtxt,lines;
txt = "";
rtxt = "";
lines = ds_list_create();

///*
for(var i=1;i<=string_length(str);i++)
{
    c = string_char_at(str,i);
    if(c != "#" && c != chr(10))
        txt+=c;
    else
    {
        ds_list_add(lines,txt);
        txt = "";
    }
}
ds_list_add(lines,txt);

for(var i=0;i<ds_list_size(lines);i++)
{
    txt = lines[| i];
    if(string_width(txt)>=w)
    {
        var ind = 0;//floor(w/string_width("W"));
        do
            ind++;
        until(string_width(string_copy(txt,0,ind))>=w)
        var s=0;
        while(string_char_at(txt,ind)!=" " && s<10)
        {
            ind--;
            s++;
        }
        
        lines[| i] = string_copy(txt,0,ind);
        ds_list_insert(lines,i+1,string_copy(txt,ind+1,string_length(txt)));
    }
}

for(var i=0;i<ds_list_size(lines);i++)
{
    rtxt += lines[| i]+chr(10);
}

//*/

/*
for(var i=1;i<=string_length(str);i++)
{
    c = string_char_at(str,i);
    if(c != "*" &&  c != "#" && c != chr(10))
        txt+=c;
    else
    {
        var section = (c == "*");
            //if(section) {txt+="*"; i++}
        if(c == "#" || c == chr(10)) {txt+=chr(10); i++;}
        
        if(string_width(txt)>w)
        {
            var ntxt = "";
            c = "";
            for(var ii=1;ii<=string_length(txt);ii++)
            {
                c += string_char_at(txt,ii);
                if(string_width(c)>w)
                {
                    string_insert(chr(10),txt,ii++);
                    c = "";
                }
            }
        }
        rtxt += txt;
    }
}
//*/
return rtxt;
