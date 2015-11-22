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

bisect = function(f, a, b, tol) {
	fa = f(a)
	fb = f(b)
	if (fa * fb >= 0) {
		cat("f(a)f(b) < 0 not satisfied!\n")
		return(NULL)
	}
	while ((b - a) / 2 > tol) {
		c = (a + b) / 2
		fc = f(c)
		if (fc == 0) break
		if (fc * fa < 0) {
			b = c; fb = fc
		} else {
			a = c; fa = fc
		}
	}
	(a + b) / 2
}

fa = function(x) x ^ 3 - 9
bisect(fa, 0, 10, 0.5e-6)
uniroot(fa, c(0, 10), tol = 0.5e-6)
fb = function(x) 3 * x ^ 3 + x ^ 2 - x - 5
bisect(fb, 0, 10, 0.5e-6)
uniroot(fb, c(0, 10), tol = 0.5e-6)
fc = function(x) cos(x) ^ 2 + 6 - x
bisect(fc, 0, 10, 0.5e-6)
uniroot(fc, c(0, 10), tol = 0.5e-6)

