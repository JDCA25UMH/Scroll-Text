decimal = 12

function dec_bin_div2(decimal)
local i = 1   
local accum = {}
local bin = {}
while decimal >= 1 do   
   
        dec_bin = decimal % 2
   decimal = math.floor(decimal / 2)

   

   accum[i] = dec_bin
  
   i = i +1
end
a= 1
for i=#accum,1,-1 do
 bin[i] = accum[a]
a= a+1 
end
return table.unpack(bin)
end

print(dec_bin_div2(decimal))
