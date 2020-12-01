function [Time_in_min,Dist_in_km] = light_time(x)
Time_in_min=((x*1.609)/300000)/60
Dist_in_km=x*1.609
end