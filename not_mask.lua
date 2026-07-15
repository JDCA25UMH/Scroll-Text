
--Status Flag

local Status_Flag = "100000000000000000000"


function cifra_status(Status_Flag)
    local t = {}
    for i = 1, #Status_Flag do
      t[i] = tonumber(Status_Flag:sub(i,i)) 
    end
    return t
 end
  
  local status = cifra_status(Status_Flag)
local status_mostrar = table.concat(status)
print("Status Flag=", status_mostrar)
  -- mask
local position = 2
local mask = math.pow(2,position )
local m = tostring(mask)
function cifra_mask(m)
    local t = {}
    for i = 1, #m do
      t[i] = tonumber(m:sub(i,i)) 
    end
    return t
  end

  local mask_number = cifra_mask(m)
  local mask_to_binario = table.unpack(mask_number)
  function dec_bin(decimal)
    local i =0
    local accum = {}
    local bin = {}
    
    while decimal >= 1 do 
     dec_bin_num = decimal % 2
     decimal= math.floor(decimal/2)
     accum[i] = dec_bin_num 
     i = i +1
    end
    a=1
    for i=#accum,1,-1 do 
     bin[i]=accum[a]
    a=a+1
    end
    return bin
    end

 mask_table = dec_bin(mask_to_binario)
mask_strg = table.concat(mask_table)

mask_mostrar = string.format("%021d", mask_strg)


function cifra_mask_mostrar(mask_mostrar)
    local t = {}
    for i = 1, #mask_mostrar do
      t[i] = tonumber(mask_mostrar:sub(i,i)) 
    end
    return t
  end


mask_total = cifra_mask_mostrar(mask_mostrar)

for k,v in pairs(mask_total)do

end
--NOT MASK 

inv_mask = {}


for k,v in pairs(mask_total)do
if v == 1 then 
inv_mask[k]= 0
else
    inv_mask[k] = 1  
end

    end
    local not_mask_mostrar = table.concat(inv_mask)
print("NOT MASK=",not_mask_mostrar)
--AND

bit_and={}


for i=1,#Status_Flag do 
if status[i]== 1  and inv_mask[i]== 1  then 
bit_and[i]= 1 
else
bit_and[i]=0
end

end
local and_mostrar = table.concat(bit_and)
print("AND=",and_mostrar)


