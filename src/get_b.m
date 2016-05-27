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