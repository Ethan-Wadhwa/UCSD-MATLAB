

function [coefs] = mypolyfit(x, y, n)
%usage of mypolyfit: coefs=mypolyfit(x, y, n)
%creates a graph with a best fit line

coefs = polyfit(x, y, n)
Y=polyval(coefs, x)
figure(n+1)
hold on;
stem(x,y,'LineWidth',2,'MarkerSize',8)
plot(x,Y,':','LineWidth',2)

hold off;

end