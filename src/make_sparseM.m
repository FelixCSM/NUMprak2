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

function [retval] = make_sparseM (N)
    n = N**2;
    A = sparse(n,n);
endfunction
