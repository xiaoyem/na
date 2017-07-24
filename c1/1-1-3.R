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

require(rootSolve)

source("c1/bisect.R")
# (a)
fa = function(x) 2 * x ^ 3 - 6 * x - 1
curve(fa, -2, 2)
abline(h = 0, v = 0)
bisect(fa, -2, -1, 0.5e-6)
bisect(fa, -1,  0, 0.5e-6)
bisect(fa,  1,  2, 0.5e-6)
uniroot.all(fa, c(-2, 2), tol = 1e-6)
# (b)
fb = function(x) exp(x - 2) + x ^ 3 - x
curve(fb, -2, 2)
abline(h = 0, v = 0)
bisect(fb,  -2,  -1, 0.5e-6)
bisect(fb,   0, 0.5, 0.5e-6)
bisect(fb, 0.5,   1, 0.5e-6)
uniroot.all(fb, c(-2, 1), tol = 1e-6)
# (c)
fc = function(x) 1 + 5 * x - 6 * x ^ 3 - exp(2 * x)
curve(fc, -2, 2)
abline(h = 0, v = 0)
bisect(fc,   -1, -0.5, 0.5e-6)
bisect(fc, -0.5,  0.5, 0.5e-6)
bisect(fc,  0.5,    1, 0.5e-6)
uniroot.all(fc, c(-1, 1), tol = 1e-6)

