function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
temp = theta;
number_of_variables =size(X,2);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %


    for iter_theta = 1 : number_of_variables
         theta(iter_theta) = theta(iter_theta) - alpha / m * sum((X*temp-y) .* X(:,iter_theta)) ;
   %  theta(iter_theta) = theta(iter_theta) - alpha / m * sum((iter_theta-1) * (X*temp-y) .* X(:,iter_theta) .^ (iter_theta-2)) ;
  %   theta(2) = theta(2) - alpha / m * sum((X*temp-y).*X(:,2));
     
    end

    temp = theta;


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
