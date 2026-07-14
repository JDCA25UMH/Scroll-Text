mask = 1000000010

function cifra_de(mask)
    local a = 0 
    cifra_d= {}
    local accum={}
    local num = mask
    while num >=1 do 

        num  = num  / 10
     
        a = a + 1
    if num <= 0 then
        return a 
    end
    end

    for i=a,1,-1 do
         
  cifra_d = math.floor(mask / 10^(i-1)) % 10
 accum[i] = cifra_d
if i < a then 
 if accum[i] == 0 then 
accum[i] = 1 

elseif accum[i] == 1 then 
accum[i] = 0 

end
end
print(accum[i])
end   
