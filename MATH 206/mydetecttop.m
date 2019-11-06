function ret = mydetecttop(f, a, t)
    prev = f(a);
    x = a;
    count = 1;
    while prev <= f(x)
        prev = f(x);
        x = a + 2*count*t;
        count = count + 1;
    end
    ret = x;
end