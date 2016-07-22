## Copyright (C) 2016 ji066375
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

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} laff_copy (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ji066375 <ji066375@X5CG5457R8M>
## Created: 2016-07-21

function [x_out] = laff_scal(alpha, x)
  
  ## Extract column and row sizes of x and y
  [m_x, n_x] = size(x);
  
  ## Make sure the row or column size is equal
  if ~isscalar(alpha)
    x_out = 'FAILED';
    return
  end
   
  if ~isvector(x)
   x_out = 'FAILED';
   return
  end
  
  if (n_x == 1) ## x is a column vector
    for i=1:m_x
      x(i, 1) = alpha * x(i, 1);
    end
  else ## x is a row vector
    for i=1:n_x
      x(1, i) = alpha * x(1, i);
    end
  end

## Return the updated x in x_out
x_out = x;

return
    
endfunction
