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

splinecoeff = function(x, y) {
    n = length(x); v1 = 0; vn = 0
    A = matrix(0, n, n)
    r = matrix(0, n, 1)
    dx = matrix(0, n, 1)
    dy = matrix(0, n, 1)
    for (i in 1:(n - 1)) {
        dx[i] = x[i + 1] - x[i]
        dy[i] = y[i + 1] - y[i]
    }
    for (i in 2:(n - 1)) {
        A[i, (i - 1):(i + 1)] = c(dx[i - 1], 2 * (dx[i - 1] + dx[i]), dx[i])
        r[i] = 3 * (dy[i] / dx[i] - dy[i - 1] / dx[i - 1])
    }
    # natural spline conditions
    A[1, 1] = 1
    A[n, n] = 1
    coeff = matrix(0, n, 3)
    coeff[, 2] = solve(A, r)
    for (i in 1:(n - 1)) {
        coeff[i, 3] = (coeff[i + 1, 2] - coeff[i, 2]) / (3 * dx[i])
        coeff[i, 1] = dy[i] / dx[i] - dx[i] * (2 * coeff[i, 2] + coeff[i + 1, 2]) / 3
    }
    coeff[1:(n - 1), ]
}

