function [theta] = gradientDescent(X,y,theta,alpha,iters)
m = length(y);
theta_r = zeros(2,1);
for iter = 1:iters
theta(1) = theta(1) - alpha / m * sum(X * theta_r - y); 
theta(2) = theta(2) - alpha / m * sum((X * theta_r - y) .* X(:,2));
theta_r = theta;
end

end