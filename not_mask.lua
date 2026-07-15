---Status Flag

local status_flag=
100000000000000000000
function cifra_bin(status_flag)
local a = 0 
local cifra_b = {}
local accum= {}
local num = status_flag
while num>= 1 do 
 num = num /10
 a =a+1
 if num <=0 then 
 return a 
 end
end

for i=a,1,-1 do 
 cifra_b= math.floor(status_flag/10^(i-1)%10)
 accum[i]=cifra_b
end
rev_status_flag = {}
b=1 
for i=a,1,-1 do 
rev_status_flag[b]= accum[i]
b=b+1
end
r = {}
for k,v in ipairs(table.pack(rev_status_flag)) do 
r[k]=v
end
 return r[1]
end

---NOT MASK 

local position = 19 
local mask = math.pow(2,position )
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
    
    function ceros(position)
     local num_cero = 21-position-1
     tb = {}
     for i= num_cero,1,-1 do 
       table.insert(tb,"0")
     end


    return table.concat(tb)
    end
    

bin = dec_bin(mask)
cero_01 = ceros(position)
bin_op = table.concat(bin)
function uno(cero_01)
    tb_1 ={}
    
    for i =#tb,1,-1 do 
    tb_1[i]= 1 
    end
    return tb_1
end

function reverse(bin)
    local a = 0 
    cifra_d = {}
    local bin = tonumber(bin)
    local accum = {}
    
    local num = bin
    
    while num>= 1 do 
    num = num /10
    a = a+1
    if num<=0 then 
    return a 
    end
    end
    for i=a,1,-1 do 
    cifra_d = math.floor(num/10^(i-1))%10
    accum[i] = cifra_d
    
    if i<a then 
     if accum[i]== 0 then 
     accum[i]= 1 
     elseif accum[i]== 1 then 
     accum[i] = 0 
     end
    end
    rev = {}
    b=1 
    for i=a,1,-1 do 
        
    rev[b]= accum[i]
    b=b+1
        
    end
    end
    return rev
    end
    
--- two tables__one
--status_flag

tb01= uno(cero_01)
tb02=reverse(bin_op)
--tamaño de la tabla 1 de not mask
num_01 = {}

for k,v in pairs(tb01)do 
num_01[k] = v 
end

--tamaño de la tabla 2 de not mask

num_02 = {}

for k,v in pairs(tb02)do 
num_02[k]= v 

end

--union de not mask 
for i = 1, #num_02 do 
num_01[#num_01+1] = num_02[i]
end
not_mask_mostrar = table.concat(num_01)
status = cifra_bin(status_flag)
status_mostar = table.concat(status)
--AND 
bit_and = {}
for i= 1,#status do 
    if status[i] == 1 and num_01[i] == 1 then 
 bit_and[i] = 1 
    else
        bit_and[i] = 0 
    end
end


print("Status Flag=",status_mostar )
print("Not mask=",not_mask_mostrar)
print("AND=",table.concat(bit_and))
