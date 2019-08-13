## Copyright (C) 2019 Beast
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} scgs (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Beast <Beast@DESKTOP-1KN1AQP>
## Created: 2019-08-13

function m = scgs (m)
  
  for j = 1:columns(m)
    v = m(:, j);
    for k = 1:j-1
      v = v - m(:, k)'*m(:, j)*m(:, k);
    endfor
    m(:, j) = v / norm(v);
  endfor  
  
endfunction
