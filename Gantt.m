%% function Gantt(P,PVal,Jm)
% 功能说明：    画甘特图
% 输入参数：
%        P     调度工序  
%        PVal  调度工序开始时间和完成时间
%        Jm    各工件各工序使用的机器 
% 输出参数:
%        PVal  调度工序开始加工时间及完成时间
%%
function Gantt(P,PVal,Jm)

% 工序总个数
[~,WNumber]=size(P);

figure(1);
for i=1:WNumber
    val= P(1,i);
    a=(mod(val,10))+1;                             % Modulus after division
    b=((val-a+1)/10);
    mText=Jm(b,a);
    PlotRec(PVal(1,i),PVal(2,i),mText);
    hold on;
    mPoint1=PVal(1,i);
    mPoint2=PVal(2,i);
    x1=mPoint1;
    y1=mText-0.5;
    x2=mPoint2;
    y2=mText-0.5;
    x3=mPoint2;
    y3=mText;
    x4=mPoint1;
    y4=mText;
    fill([x1,x2,x3,x4],[y1,y2,y3,y4],[1,0.5,1]);
    word=num2str(P(1,i));
    %text(0.5*mPoint1+0.5*mPoint2,mText-0.5,word);
    text(mPoint1,mText-0.7,word);
end
end