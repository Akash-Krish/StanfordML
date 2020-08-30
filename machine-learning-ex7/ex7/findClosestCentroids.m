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

i =1;
j =1;
[m,n] = size(X);	
while i<=m
	% initialize 
	dis = 999999;
	num = -1; 
	while j<=K
		distance =0;
		dimension =1;
		while dimension <=n
			distance = distance + (X(i,dimension) - centroids(j,dimension)) *(X(i,dimension) - centroids(j,dimension)) ;
			dimension = dimension +1;
		end;
		if(distance <= dis)
			dis = distance;
			num = j;
		end;
	j = j+1;
	end;
	idx(i) = num;
	j=1;
	i = i+1;
end;





% =============================================================

end

