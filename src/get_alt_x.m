

## Author:  Felix Völker
## Created: 2016-05-27

function [alt_x] = get_alt_x (N)
    alt_x = sparse(N**2,1);
    for j = 1:(N**2)
        alt_x(j)=(j-1)/(N**2-1);
    endfor
endfunction
