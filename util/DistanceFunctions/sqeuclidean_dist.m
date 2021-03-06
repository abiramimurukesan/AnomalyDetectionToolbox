function d=sqeuclidean(XI,XJ)
  % Implementation of the squared euclidean distance to use with pdist
  
  m=size(XJ,1); % number of samples of p
  p=size(XI,2); % dimension of samples
  
  assert(p == size(XJ,2)); % equal dimensions
  assert(size(XI,1) == 1); % pdist requires XI to be a single sample
  
  d=zeros(m,1); % initialize output array
  
  for i=1:m
    d(i,1) = sum((XI - XJ(i,:)).^2);
  end