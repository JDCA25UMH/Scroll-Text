decimal = 4234


function cifra_de(decimal)
    local a = 0 
    cifra_d= {}
    local accum={}
    local num = decimal
    while num >=1 do 
     
     
     num  = num  / 10
     
        a = a + 1
    if num <= 0 then
        return a 
    end
    end

    for i=a,1,-1 do
         
    cifra_d = math.floor(decimal / 10^(i-1)) % 10
 accum[i] = cifra_d

 end
 return table.unpack(accum)
end

print(cifra_de(decimal))
