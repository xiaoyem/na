#
# Copyright (c) 2015 by Xiaoye Meng.
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
fa = function(x) x ^ 5 + x - 1
bisect(fa, 0, 10, 0.5e-8)
uniroot(fa, c(0, 10), tol = 1e-8)
fb = function(x) sin(x) - 6 * x - 5
bisect(fb, -10, 10, 0.5e-8)
uniroot(fb, c(-10, 10), tol = 1e-8)
fc = function(x) log2(x) + x ^ 2 - 3
bisect(fc, 0, 10, 0.5e-8)
uniroot(fc, c(0, 10), tol = 1e-8)

