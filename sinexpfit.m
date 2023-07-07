clear all
close all
v=uiimport;

%%
x=v.data(:,1);
y=v.data(:,2);

%%
xint=x(end)-x(1);
N=numel(x);
x=linspace(0,xint,N);
x=x';

dx=1/2*(x(2)-x(1));
dy=input('Enter Approximation of Noise Voltage Error: ');

dx=dx*ones(size(x));
dy=dy*ones(size(y));

%%
errorbarxy(x,y,dx,dy);
model=@(p,x)p(1).*exp(-x./(2*p(2))).*sin(p(3)*x+p(4))+p(5);

disp('Underdamped model V(t;A,B,C,D,E)=A*exp(-t/2B)*sin(Ct+D)+E')
disp('---------------------------------------------------------')
Ag=input('Enter estimate for parameter A: ');
Bg=input('Enter estimate for parameter B: ');
Cg=input('Enter estimate for parameter C: ');
Dg=input('Enter estimate for parameter D: ');
Eg=input('Enter estimate for parameter E: ');

results=wnlfit(x,y,dx,dy,model,[Ag Bg Cg Dg Eg]);

%%
pname={'A','B','C','D','E'};
for i=1:size(pname,2)
    fprintf('Parameter %s = %6e +/- %1e \n',pname{i},results.param(i),results.paramerr(i));
end