function testder(g,x,dzdy,dzdx,delta)

if nargin < 5
  delta = 1e-4 ;
end

y = g(x) ;
dzdx_=zeros(size(dzdx));
for i=1:numel(x)
  dx = zeros(size(x)) ;
  dx(i) = delta ;
  y_=g(x+dx) ;
  factors = dzdy .* (y_ - y)/delta ;
  dzdx_(i) = dzdx_(i) + sum(factors(:)) ;
end
assert(max(abs(dzdx(:) - dzdx_(:))) < 1e-1) ;

