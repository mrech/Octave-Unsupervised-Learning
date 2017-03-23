function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i=1:size(X,1) # Go over every example
  min_d=inf; # Initiate min distortion as scalar big number
  for k=1:K
    diff=X(i,:)'-centroids(k,:)'; # (1,:) is referencing the whole row. X(i) will only return a single value  
                                 # ' transpose X'2x300 and centroids'2x3 
    d=diff'*diff; # squared 
    if (d < min_d)
      min_d = d;
      idx(i)=k; # index of the centroid closest to example i
    end
  end
end


% =============================================================

end

