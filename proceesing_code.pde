
//firstly create a txt file and enter 0 in it and save it

import processing.serial.*;



Serial x;

void setup()
{
   size(640,480);
x=new Serial(this,"port number",9600);
}


void draw()
{
if(x.available()>0)
{
int z=x.read();
println(z);
if(z>130)//enter the critical value
{
String abc="1";  //this will make 0 to 1 in txt file
String[] b=split(abc," ");
saveStrings("file.txt",b);


}
if(z<130)
{
String abc="0";
String[] b=split(abc," ");
saveStrings("file.txt",b);


}


}


}