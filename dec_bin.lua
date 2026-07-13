decimal = 12

function dec_bin(decimal)
local i = 1   
local accum = {}
local bin = {}
while decimal >= 1 do   
        dec_bin_num  = decimal % 2
   decimal = math.floor(decimal / 2)
     accum[i] = dec_bin_num
     i = i +1
end
a= 1
for i=#accum,1,-1 do
 bin[i] = accum[a]
a= a+1 
end
return table.concat(bin)
end

print(dec_bin(decimal))
