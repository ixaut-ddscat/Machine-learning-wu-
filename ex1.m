%%
clear;
close all;
clc
%%
fprintf('��ʾ���ݼ��ļ�');
data = load('ext1.txt');
X = data(:,1);y = data(:,2);
m = length(y);
scatter(X, y);
fprintf('��ʾ���ݼ��ļ�����ɣ�����enter����');
pause;
%%
fprintf('�����Ա����ع麯��ʵ��');
X = [ones(m,1),data(:,1)];
theta = zeros(2,1);
iter= 1500;
alpha = 0.01;
theta = gradientDescent(X,y,theta,alpha,iter);
hold on;
plot(X(:,2),X*theta,'-')
fprintf('%f %f \n', theta(1), theta(2));