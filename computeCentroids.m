function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

centroids = zeros(K, n);


for i = 1:K
    ck = 0;
    athr = zeros(1,n);
    for j = 1:size(X,1)
        if idx(j) == i
            ck = ck + 1;
            athr = athr + X(j,:);
        end
    end
    centroids(i,:) = (1/ck) * athr;
end


end

