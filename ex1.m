%%
clear;
close all;
clc
%%
fprintf('显示数据集文件');
data = load('ext1.txt');
X = data(:,1);y = data(:,2);
m = length(y);
scatter(X, y);
fprintf('显示数据集文件已完成，输入enter继续');
pause;
%%
fprintf('单线性变量回归函数实体');
X = [ones(m,1),data(:,1)];
theta = zeros(2,1);
iter= 1500;
alpha = 0.01;
theta = gradientDescent(X,y,theta,alpha,iter);
hold on;
plot(X(:,2),X*theta,'-')
fprintf('%f %f \n', theta(1), theta(2));