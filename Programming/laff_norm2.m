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
## @deftypefn {Function File} {@var{retval} =} laff_norm2 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ji066375 <ji066375@X5CG5457R8M>
## Created: 2016-07-21

function [alpha] = laff_norm2 (x)
  
  if ~isvector(x)
    alpha =  'FAILED';
    return
  end

  ## norm length as product of square root of dot operation
  alpha = sqrt(laff_dot(x, x));
  return
  
endfunction
