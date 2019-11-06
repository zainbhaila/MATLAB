function ret = mypiecewise(a,b,c)
    if c == 0 
        ret = 7*(a+b);
    elseif c > 0 
        ret =  a*b/c^5;
    else
        ret = -5;
    end
end