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

source("c2/jacobi.R")
n = 100
A = diag(rep(3, n)) + rbind(rep(0, n), cbind(diag(rep(-1, n - 1)), rep(0, n - 1))) +
    cbind(rep(0, n), rbind(diag(rep(-1, n - 1)), rep(0, n - 1)))
b = matrix(1, n, 1)
b[1, 1] = 2; b[n, 1] = 2
x0 = matrix(1, n, 1)
norm(b - A %*% jacobi(A, b, x0, 0.5e-6), "I")

