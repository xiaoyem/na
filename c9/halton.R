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

halton = function(p, n) {
    m = ceiling(log(n) / log(p))
    b = c(rep(0, m))
    u = c(rep(0, m))
    for (i in 1:n) {
        j = 1
        b[1] = b[1] + 1
        while (b[j] > p - 1 + .Machine$double.eps) {
            b[j] = 0
            j = j + 1
            b[j] = b[j] + 1
        }
        u[i] = 0
        for (k in 1:m) {
            u[i] = u[i] + b[k] * p ^ (-k)
        }
    }
    u
}

