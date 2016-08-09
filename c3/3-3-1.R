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

sin1 = function(x) {
    b = c(pi / 4 + pi / 4 * cos((2 * seq(1, 4) - 1) * pi / (2 * 4))); yb = sin(b)
    c = newtdd(b, yb, 4)
    s = 1
    x1 = x %% (2 * pi)
    if (x1 > pi) {
        x1 = 2 * pi - x1
        s = -1
    }
    if (x1 > pi / 2) {
        x1 = pi - x1
    }
    s * nest(3, c, x1, b)
}

source("c3/newtdd.R")
source("c0/nest.R")
x = seq(-2, 2, 4 / 100)
y = c(rep(0, length(x)))
for (i in 1:length(x)) {
    y[i] = sin1(x[i])
}
plot(x, y, ylab = "sin1(x)")
curve(sin, -2, 2, add = TRUE)
abline(h = 0, v = 0)

