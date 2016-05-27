#Felix Völker und Konstantin Wehrwein

## Author:  Felix Völker
## Created: 2016-05-25

function [x_star,k] = cg_verf (A, b, x_k, tol, n_max)
    r_k = b - (A * x_k);
    d_k= r_k;
    k=0;
    while((r_k'*r_k)>tol && k<= n_max)
        t_k = (norm(r_k)**2)/(d_k'*(A*d_k));
        x_k = x_k + t_k*d_k;
        rneu =b-A*x_k;
        beta=(norm(rneu)**2)/(norm(r_k)**2);
        r_k = rneu;
        d_k=r_k + beta*d_k;
        k=k+1;
    endwhile
    x_star = x_k;
endfunction
