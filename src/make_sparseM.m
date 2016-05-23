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

## This function returns a new sparse matix with the entries of NxN NxN
## matrices. The diagonal is made of NxN matrices with the value 4 on
## the diagonal an -1 on the on above and below.
## Above and below are negative identity mutrices.
## All as requestet by the first practicle exercise

## Author:  <Felix Völker>
## Created: 2016-05-23


#@param N, amount of T matrices (ref exercise)
#@return value is newly created required sparse matix
function [A] = make_sparseM (N)

    #actual size of A
    n = N**2;
    #"allocating" possible entries
    A = sparse(n,n);
    
    #this for-loop writes the T's in A
    for T = 0:N:n-1
        for i = T+1:T+N-1
            A(i,i)=4;
            A(i,i+1)=A(i+1,i)=-1;
        endfor
        A(T+N,T+N)=4;
    endfor
    
    #this for-loop writes the negative identity matrices into A
    for i = 1:n-N
        A(i,i+N)=A(i+N,i)=-1;
     endfor
endfunction


##this function can be tested with spy(A) and full(A)