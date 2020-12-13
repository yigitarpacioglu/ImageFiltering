function outimg3 = filterImage(inimg, filter)

filterSize = size(filter);

[x,y] = size(inimg);

outimg3 = zeros(x, y);

double outimg3;

for i = (filterSize-1)/2 +1: (x - (filterSize-1)/2)
   
for j = (filterSize-1)/2+1 : (y - (filterSize-1)/2 )

for a=1:filterSize  
            
for b =1:filterSize
         
outimg3(i,j) = (filter(a,b))*double(inimg(i+a-length(filterSize-1)/2-1,j+b-length(filterSize-1)/2-1))+outimg3(i,j);
                    
end
    
end

end

end




