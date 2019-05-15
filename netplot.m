%������netplot
%ʹ�÷���������help netplot
%�޷���ֵ
%����ֻ�ܴ�������ͼ

function netplot(A,flag)
    %���÷�������netplot(A,flag)���޷���ֵ
    %AΪ�ڽӾ�����������
    %flag=1ʱ�����ڽӾ���
    %flag=2ʱ�����������
    %����ֻ�ܴ�������ͼ
    if flag==1      %�ڽӾ����ʾ����ͼ
        ND_netplot(A);
        return;
    end
    
    if flag==2      %���������ʾ����ͼ
        [m n]=size(A);      %����������ڽӾ���
        W=zeros(m,m);
        for i=1:n
            a=find(A(:,i)~=0);
            W(a(1),a(2))=1;
            W(a(2),a(1))=1;
        end
        ND_netplot(W);
        return;
    end
           
    function ND_netplot(A)
        [n n]=size(A);
        w=floor(sqrt(n));       
        h=floor(n/w);        
        x=[];
        y=[];
        for i=1:h           %ʹ��������������䷶Χ��ʹ��ʾ�ֲ��ĸ���
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
        
        title('��������ͼ'); 
        for i=1:n
            for j=i:n
                if A(i,j)~=0
                    c=num2str(A(i,j));                      %��A�е�Ȩֵת��Ϊ�ַ���              
                    text((x(i)+x(j))/2,(y(i)+y(j))/2,c,'Fontsize',10);  %��ʾ�ߵ�Ȩֵ
                    line([x(i) x(j)],[y(i) y(j)]);      %����
                end
                text(x(i),y(i),num2str(i),'Fontsize',14,'color','r');   %��ʾ������            
                hold on;
            end
        end  
    end
    
end