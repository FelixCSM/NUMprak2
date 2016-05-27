#Felix Völker und Konstantin Wehrwein

## Author:  Felix Völker
## Created: 2016-05-25

function [x_k,k] = vorkon_cg (x_k,A, P,b,tol,n_max)
    r_k = b - (A * x_k);
    z_k = P\r_k;
    d_k = z_k;
    k = 0;
    while(norm(r_k)>tol && k<n_max)
        t = (r_k' * z_k)/(d_k' * (A *d_k));
        x_k = x_k + t * d_k;
        rnew = r_k - t* A * d_k;
        znew = P\r_k;
        beta = (rnew' * znew)/(r_k' * z_k);
        r_k = rnew;
        z_k = znew;
        k = k + 1;
    endwhile
endfunction
