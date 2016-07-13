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

source("c1/bisect.R")
# (a)
fa = function(x) x ^ 3 - 9
curve(fa, -3, 3)
abline(h = 0, v = 0)
bisect(fa, 2, 3, 0.5e-6)
uniroot(fa, c(2, 3), tol = 1e-6)
# (b)
fb = function(x) 3 * x ^ 3 + x ^ 2 - x - 5
curve(fb, -3, 3)
abline(h = 0, v = 0)
bisect(fb, 1, 2, 0.5e-6)
uniroot(fb, c(1, 2), tol = 1e-6)
# (c)
fc = function(x) cos(x) ^ 2 + 6 - x
curve(fc, 2, 8)
abline(h = 0)
bisect(fc, 6, 7, 0.5e-6)
uniroot(fc, c(6, 7), tol = 1e-6)

