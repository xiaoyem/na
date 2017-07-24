#
# Copyright (c) 2015-2017 by Yuchao Zhao, Xiaoye Meng.
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

source("c1/bisect.R")
# (a)
fa = function(x) x ^ 5 + x - 1
curve(fa, -2, 2)
abline(h = 0, v = 0)
bisect(fa, 0, 1, 0.5e-8)
uniroot(fa, c(0, 1), tol = 1e-8)
# (b)
fb = function(x) sin(x) - 6 * x - 5
curve(fb, -2, 2)
abline(h = 0, v = 0)
bisect(fb, -1, 0, 0.5e-8)
uniroot(fb, c(-1, 0), tol = 1e-8)
# (c)
fc = function(x) log2(x) + x ^ 2 - 3
curve(fc, 0, 4)
abline(h = 0, v = 0)
bisect(fc, 1, 2, 0.5e-8)
uniroot(fc, c(1, 2), tol = 1e-8)

