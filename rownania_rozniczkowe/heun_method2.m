function results = heun_method2 (h, x0, y0,t0, x, dxdt,dydt)
n = length(t0:h:x);
results=zeros(3,n);
results(:,1)=[x0;y0;t0];
i=2;
while i <=n
    x0 = x0+h*(dxdt(x0,y0,t0)+dxdt(x0+h,y0+h*dxdt(x0,y0,t0)))/2;
    y0 = y0+h*(dydt(x0,y0,t0)+dydt(x0+h,y0+h*dydt(x0,y0,t0)))/2;
    t0 =t0+h;
    results(:,i)=[x0;y0;t0];
    i=i+1;
end