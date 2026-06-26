
local texto = ""


function _textinput(t)
 texto = texto..t
end

function _keypressed(tecla)
if tecla == "backspace"then 
 texto = texto:sub(1,-2)
end
end

function _draw()
clear()
print(texto,1,1)
end

