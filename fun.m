function [target]= fun(input)
%换挡之间的函数
b=[1 2 3 4];
y=@(x)(x.^3+1);

a=size(input);
target=zeros(1,a(2));
for i=1:a(2)
    if input(2,i)>=y((input(1,i))-2)
        target(i)=b(1);
    else 
        if input(2,i)>=y((input(1,i))-3)
            target(i)=b(2);
        else
            if input(2,i)>=y((input(1,i))-4)
                target(i)=b(3);
            else
                target(i)=b(4);
            end
        end
    end
end

end

