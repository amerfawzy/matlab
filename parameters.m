clc
clear all
close all
a = 2;
b = 2;
o = zeros(2,2);
for r = 1:a
    for c=1:b
        fprintf('Enter the value in row %d column %d\n',r,c);
        m(r,c)=input('');
    end
end
display(m)
delta = det(m);
p = input(['What is your entered parameter?  '],'s');
if isequal(p,'Z') %Converting Z to any parameter
q = input('Enter your required parameter: ','s');
if isequal(q ,'Y')
    o(1,1) = m(2,2).*(1/delta);
    o(2,2) = m(1,1).*(1/delta);
    o(1,2) = -m(1,2).*(1/delta);
    o(2,1) = -m(2,1).*(1/delta);
elseif isequal(q ,'H')
    o(1,1) = delta/m(2,2);
    o(2,2) = 1/m(2,2);
    o(1,2) = m(1,2)/m(2,2);
    o(2,1) = -m(2,1)/m(2,2);
elseif isequal(q,'G')
    o(1,1) = 1/m(1,1);
    o(2,2) = delta/m(1,1);
    o(1,2) = -m(1,2)/m(1,1);
    o(2,1) = m(2,1)/m(1,1);
elseif isequal(q,'T')
    o(1,1) = m(1,1)/m(2,1);
    o(2,2) = m(2,2)/m(2,1);
    o(1,2) = delta/m(2,1);
    o(2,1) = 1/m(2,1);
end
elseif isequal(p,'Y') %Converting Y to another paramter
q = input('Enter your required parameter: ','s');
if isequal(q ,'Z')
    o(1,1) = m(2,2).*(1/delta);
    o(2,2) = m(1,1).*(1/delta);
    o(1,2) = -m(1,2).*(1/delta);
    o(2,1) = -m(2,1).*(1/delta);
elseif isequal(q ,'H')
    o(1,1) = 1/m(1,1);
    o(2,2) = delta/m(1,1);
    o(1,2) = -m(1,2)/m(1,1);
    o(2,1) = -m(2,1)/m(1,1);
elseif isequal(q,'G')
    o(1,1) = delta/m(2,2);
    o(2,2) = 1/m(2,2);
    o(1,2) = m(1,2)/m(2,2);
    o(2,1) = -m(2,1)/m(2,2);
elseif isequal(q,'T')
    o(1,1) = -m(1,1)/m(2,1);
    o(2,2) = -m(2,2)/m(2,1);
    o(1,2) = -1/m(2,1);
    o(2,1) = -delta/m(2,1);
end
elseif isequal(p,'H') %Converting H to another paramter
q = input('Enter your required parameter: ','s');
if isequal(q ,'G')
    o(1,1) = m(2,2).*(1/delta);
    o(2,2) = m(1,1).*(1/delta);
    o(1,2) = -m(1,2).*(1/delta);
    o(2,1) = -m(2,1).*(1/delta);
elseif isequal(q ,'Y')
    o(1,1) = 1/m(1,1);
    o(2,2) = delta/m(1,1);
    o(1,2) = -m(1,2)/m(1,1);
    o(2,1) = m(2,1)/m(1,1);
elseif isequal(q,'Z')
    o(1,1) = delta/m(2,2);
    o(2,2) = 1/m(2,2);
    o(1,2) = m(1,2)/m(2,2);
    o(2,1) = -m(2,1)/m(2,2);
elseif isequal(q,'T')
    o(1,1) = -delta/m(2,1);
    o(2,2) = -1/m(2,1);
    o(1,2) = -m(1,1)/m(2,1);
    o(2,1) = -m(2,2)/m(2,1);
end
elseif isequal(p,'G') %Converting G to another paramter
q = input('Enter your required parameter: ','s');
if isequal(q ,'H')
    o(1,1) = m(2,2).*(1/delta);
    o(2,2) = m(1,1).*(1/delta);
    o(1,2) = -m(1,2).*(1/delta);
    o(2,1) = -m(2,1).*(1/delta);
elseif isequal(q ,'Z')
    o(1,1) = 1/m(1,1);
    o(2,2) = delta/m(1,1);
    o(1,2) = -m(1,2)/m(1,1);
    o(2,1) = m(2,1)/m(1,1);
elseif isequal(q,'Y')
    o(1,1) = delta/m(2,2);
    o(2,2) = 1/m(2,2);
    o(1,2) = m(1,2)/m(2,2);
    o(2,1) = -m(2,1)/m(2,2);
elseif isequal(q,'T')
    o(1,1) = 1/m(2,1);
    o(2,2) = delta/m(2,1);
    o(1,2) = m(2,2)/m(2,1);
    o(2,1) = m(1,1)/m(2,1);
end
elseif isequal(p,'T') %Converting T to another paramter
q = input('Enter your required parameter: ','s');
if isequal(q ,'Y') 
    o(1,1) = m(2,2)/m(1,2);
    o(2,2) = m(1,1)/m(1,2);
    o(1,2) = delta/m(1,2);
    o(2,1) = -1/m(1,2);
elseif isequal(q ,'G')
    o(1,1) = m(2,1)/m(1,1);
    o(2,2) = m(1,2)/m(1,1);
    o(1,2) = -delta/m(1,1);
    o(2,1) = 1/m(1,1);
elseif isequal(q,'H')
    o(1,1) = m(1,2)/m(2,2);
    o(2,2) = m(2,1)/m(2,2);
    o(1,2) = delta/m(2,2);
    o(2,1) = -1/m(2,2);
elseif isequal(q,'Z')
    o(1,1) = m(1,1)/m(2,1);
    o(2,2) = m(2,2)/m(2,1);
    o(1,2) = delta/m(2,1);
    o(2,1) = 1/m(2,1);
end
end
disp(o)