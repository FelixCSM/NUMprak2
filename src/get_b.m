#Felix Völker und Konstantin Wehrwein

## Author:  Felix Völker
## Created: 2016-05-24
##@input is N
##@return is b as task


function [b] = get_b(N)
  h = get_h(N);
  b = sparse(N**2,1);
  XY = h*[1:N];
  for j=1:N
    for i=1:N
      b(i + (j-1)*N) = h*h*sin(pi*XY(i))*sin(pi*XY(j));
    endfor
  endfor
endfunction


# calculates h
# @param N
# @return h
function [h] = get_h (N)
  h = 1/(N+1);
endfunction