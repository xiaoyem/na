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
fa = function(x) x ^ 2 - 2
curve(fa, -2, 2)
abline(h = 0, v = 0)
bisect(fa, -2, -1, 0.5e-8)
bisect(fa,  1,  2, 0.5e-8)
uniroot.all(fa, c(-2, 2), tol = 1e-8)
# (b)
fb = function(x) x ^ 2 - 3
curve(fb, -2, 2)
abline(h = 0, v = 0)
bisect(fb, -2, -1, 0.5e-8)
bisect(fb,  1,  2, 0.5e-8)
uniroot.all(fb, c(-2, 2), tol = 1e-8)
# (c)
fc = function(x) x ^ 2 - 5
curve(fc, -3, 3)
abline(h = 0, v = 0)
bisect(fc, -3, -2, 0.5e-8)
bisect(fc,  2,  3, 0.5e-8)
uniroot.all(fc, c(-3, 3), tol = 1e-8)

