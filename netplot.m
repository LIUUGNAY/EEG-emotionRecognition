%函数名netplot
%使用方法输入请help netplot
%无返回值
%函数只能处理无向图
function netplot(A)
        [n,n]=size(A);
        w=floor(sqrt(n));       
        h=floor(n/w);        
        x=[];
        y=[];
        for i=1:h           %使产生的随机点有其范围，使显示分布的更广
            for j=1:w
                x=[x 10*rand(1)+(j-1)*10];
                y=[y 10*rand(1)+(i-1)*10];
            end
        end
        ed=n-h*w;
        for i=1:ed
           x=[x 10*rand(1)+(i-1)*10]; 
           y=[y 10*rand(1)+h*10];
        end
        plot(x,y,'r*');    
        
        title('网络拓扑图'); 
        for i=1:n
            for j=i:n
                if A(i,j)~=0
                    c=num2str(A(i,j));                      %将A中的权值转化为字符型              
                    text((x(i)+x(j))/2,(y(i)+y(j))/2,c,'Fontsize',10);  %显示边的权值
                    line([x(i) x(j)],[y(i) y(j)]);      %连线
                end
                text(x(i),y(i),num2str(i),'Fontsize',14,'color','r');   %显示点的序号            
                hold on;
            end
        end  
   
    
end