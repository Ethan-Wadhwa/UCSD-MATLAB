%1
g=0;
for n = 1:100
    g=(1/(n*(n+1)));
    n = n+1;
end
g

clear all;
%2
for h=1:100
    s=((-1)^h)*exp(h);
end
s

%3
x=.5;
for y = 1:100
    k=(x^y)/y;
end
k

myend=randi([80,100]);
vec=1:5:myend
vec2=-2:.4:2;
myvec=vec2.'

clear all;
mat= [1.80141401508087  -3.12014059958672  0.00000000000000; 1.80141401508087 3.12014059958672 0.00000000000000; 0.00000000000000   0.00000000000000  16.33037901018710]
a=mat(1,:); 
b=mat(2,:); 
c=mat(3,:);
% volume
V=dot(cross(a,b),c)
%magnitude of a b and c
maga= norm(a)
magb= norm(b)
magc= norm(c)

clear all;

