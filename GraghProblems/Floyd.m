function[path,dis] = Floyd(gra)
n = size(gra);
dis = gra;
path = zeros(n);
for k = 1 : n
    for i = 1 : n
        for j = 1 : n
            if(dis(i,k) + dis(k,j) < dis(i,j))
                dis(i,j) = dis(i,k) + dis(k,j);
                path(i,j) = k;
            end
        end
    end
end


     