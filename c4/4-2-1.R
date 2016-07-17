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

A = matrix(c(1, cos(2 * pi *  0 / 12), sin(2 * pi *  0 / 12), cos(4 * pi *  0 / 12),
             1, cos(2 * pi *  1 / 12), sin(2 * pi *  1 / 12), cos(4 * pi *  1 / 12),
             1, cos(2 * pi *  2 / 12), sin(2 * pi *  2 / 12), cos(4 * pi *  2 / 12),
             1, cos(2 * pi *  3 / 12), sin(2 * pi *  3 / 12), cos(4 * pi *  3 / 12),
             1, cos(2 * pi *  4 / 12), sin(2 * pi *  4 / 12), cos(4 * pi *  4 / 12),
             1, cos(2 * pi *  5 / 12), sin(2 * pi *  5 / 12), cos(4 * pi *  5 / 12),
             1, cos(2 * pi *  6 / 12), sin(2 * pi *  6 / 12), cos(4 * pi *  6 / 12),
             1, cos(2 * pi *  7 / 12), sin(2 * pi *  7 / 12), cos(4 * pi *  7 / 12),
             1, cos(2 * pi *  8 / 12), sin(2 * pi *  8 / 12), cos(4 * pi *  8 / 12),
             1, cos(2 * pi *  9 / 12), sin(2 * pi *  9 / 12), cos(4 * pi *  9 / 12),
             1, cos(2 * pi * 10 / 12), sin(2 * pi * 10 / 12), cos(4 * pi * 10 / 12),
             1, cos(2 * pi * 11 / 12), sin(2 * pi * 11 / 12), cos(4 * pi * 11 / 12)),
           ncol = 4, byrow = TRUE)
b = matrix(c(6.224, 6.665, 6.241, 5.302, 5.073, 5.127, 4.994, 5.012, 5.108, 5.377, 5.510, 6.372))
x = solve(t(A) %*% A, t(A) %*% b)
x
sqrt(sum((b - A %*% x) ^ 2)) / sqrt(nrow(b))

