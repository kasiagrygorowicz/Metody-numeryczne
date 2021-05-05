function result = simpson_rule_closed(fi,h)
    result = h*(fi(1)+4*fi(2)+fi(3))/3;
end
