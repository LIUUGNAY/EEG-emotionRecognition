
function avg = aveTest(PLV1,PLV2)

sum=0;
for i=1:32
    for j=1:32
        sum=sum+PLV1(i,j)+PLV22(i,j);
        
    end    
end
avg=sum/(2*(32*32-32));
end

