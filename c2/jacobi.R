#
# Copyright (c) 2015-2016 by Yuchao Zhao, Xiaoye Meng.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

jacobi = function(A, b, x0, tol) {
    n = length(b)
    D = diag(diag(A))
    r = A - D
    x = matrix(0, n, 1)
    c = 0;
    while (norm(x0 - x, "I") / 2 > tol) {
        c = c + 1
    	x = solve(D) %*% (b - r %*% x)
    }
    print(c)
    x
}

