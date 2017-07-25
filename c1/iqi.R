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

iqi = function(f, x0, x1, x2, tol) {
    while (abs(x2 - x1) / 2 > tol) {
        q = f(x0) / f(x1); r = f(x2) / f(x1); s = f(x2) / f(x0)
        x3 = x2 - (r * (r - q) * (x2 - x1) + (1 - r) * s * (x2 - x0)) /
            ((q - 1) * (r - 1) * (s - 1))
        x0 = x1; x1 = x2; x2 = x3
    }
    x2
}

