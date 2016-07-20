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

bisect = function(f, a, b, tol) {
    fa = f(a)
    fb = f(b)
    if (fa * fb >= 0) {
        stop("f(a)f(b) < 0 not satisfied!")
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

