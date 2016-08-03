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

topescape = function(n, a, b) {
    c = 0
    for (i in 1:n) {
        w = 0
        while (TRUE) {
            if (runif(1) > 1 / 2) {
                w = w + 1
            } else {
                w = w - 1
            }
            if (w == a) {
                c = c + 1
                break
            } else if (w == -b) {
                break
            }
        }
    }
    p = c / n
    list(p, abs(p - b / (a + b)))
}

# (a)
topescape(10000, 5, 2)
# (b)
topescape(10000, 3, 5)
# (c)
topescape(10000, 3, 8)

