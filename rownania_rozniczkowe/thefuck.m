function results = thefuck (h, x0, y0, x, f)
   n = (x-x0)/h;
 results = zeros(2,n);
   i = 2;
%          rząd 1 na x
  results(1,1) = x0;
% %         rząd 2 na y
results(2,1) = y0;
    
    while i<=n+1
        predicator_y = calculate_predicator(x0,y0,h,f);
        predicator_x = x0 + h;
        corrector_y = calculate_corrector(x0,y0,predicator_x,predicator_y,h,f);
        x0 = predicator_x;
        y0 = corrector_y;
results(1,i) = x0;
        results(2,i) = y0;         
        i = i +1;
    end
end
