function ret = mysum(a,m,n)
    ret = 0;
    for i = [m:n]
        ret = ret + (3/a).^i;
    end
end