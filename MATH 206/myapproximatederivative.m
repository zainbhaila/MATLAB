function ret = myapproximatederivative(f,a,t)
    prev = (f(a+1/4) - f(a))/(1/4);
    cur = (f(a+1/8) - f(a))/(1/8);
    val = [1 8];
    while abs(cur-prev) >= t
        val(2) = val(2) + 4;
        frac = val(1)/val(2);
        prev = cur;
        cur = (f(a+frac) - f(a))/frac;
    end
    ret = cur;
end