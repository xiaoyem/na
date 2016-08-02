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

source("c9/halton.R")
p1 = function(x) x ^ 2 - x + 1 / 2
p2 = function(x) - x ^ 2 + x + 1 / 2
# (b)
for (i in 2:5) {
    x = halton(2, 10 ^ i)
    print(sum(sapply(x, function(x) p2(x) - p1(x))) / 10 ^ i)
}
# (c)
for (i in 2:5) {
    x = halton(2, 10 ^ i)
    y = halton(3, 10 ^ i)
    c = 0
    for (j in 1:10 ^ i) {
        if (y[j] >= p1(x[j]) && y[j] <= p2(x[j]))
            c = c + 1
    }
    print(c / 10 ^ i)
}

