## Copyright (C) 2016 
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.


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
