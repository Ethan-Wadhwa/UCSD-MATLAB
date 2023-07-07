num=1;
if num>=4
    fprintf('4\n')
else
    if num>=3
        fprintf('3\n')
    else
        fprintf('2\n')
    end
end
a1=[1.252 1.252 0]
a2=[-2.168 2.168 0]
a3=[0 0 3.979]
v=(a1.*a2).*a3