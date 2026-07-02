
function _init()

end
text=""
lins= {}
local scroll = 0 
local lh = 6
function textoreal(text,x,y)

text = text
x= x
y = y 
local yy = y  

for parte in text:gmatch("[^\t]+")do

color(00)
print(parte,x,yy)
yy=yy+8
    if text:find("\t\t")then
      yy=yy+8
    end
end
end
function _update(dt)
if btnp(4)then
math.max(0,scroll-6)
end
end
function _textinput(t)
text= text..t
end
function _keypressed(tecla)
if tecla=="backspace"then

text= text:sub(1,-2)
elseif tecla == "tab"then
text = text.."\t"
end
end

function _draw()
clear()
clip(100,12,80,100)
pushMatrix()
cam("translate",0,1)
color(06)
rect(100,10,80,100)
tex_real =textoreal(text,103,12)
popMatrix()
clip()
end

