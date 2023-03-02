clc
clear all;
a=read_ENVIimagefile('yyc200');
a=a/4095;
[s1,s2,L]=size(a);
a=reshape(a,[s1*s2,L]);
a=a';
c=3;
k=0;
S=[];
x=[];
% o1 is the first order which is randomly generated 
o1=randi([1,s3]);


k=2;
x(:,1)=a(:,o1);
x(:,2)=a(:,o2);
S(:,1)=a(:,o1);
S(:,2)=a(:,o2);
a(:,o1)=[];
a(:,o2)=[];
while k<=c
    for i=1:L-k
        x(:,k+1)=a(:,i);
        e=a-[]
    end
    [,IND]=max(e);
    S(:,k+1)=a(:,IND);
    a(:,IND)=[];
    k=k+1;
end
    

