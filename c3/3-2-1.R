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

source("c3/newtdd.R")
source("c0/nest.R")
# (a)
x = c(0.6, 0.7, 0.8, 0.9, 1.0)
y = c(1.433329, 1.632316, 1.896481, 2.247908, 2.718282)
c = newtdd(x, y, 5)
c
# (b)
p1 = nest(4, c, 0.82, x)
p1
p2 = nest(4, c, 0.98, x)
p2
# (c)
abs((0.82 - 0.6) * (0.82 - 0.7) * (0.82 - 0.8) * (0.82 - 0.9) * (0.82 - 1.0) / factorial(5) *
    exp(1) * (32 + 160 + 120))
abs(exp(0.82 ^ 2) - p1)
abs((0.98 - 0.6) * (0.98 - 0.7) * (0.98 - 0.8) * (0.98 - 0.9) * (0.98 - 1.0) / factorial(5) *
    exp(1) * (32 + 160 + 120))
abs(exp(0.98 ^ 2) - p2)
# (d)
f = function(x) c[1] + (x - 0.6) * (c[2] + (x - 0.7) * (c[3] + (x - 0.8) * (c[4] + (x - 0.9) *
                c[5]))) - exp(x ^ 2)
par(mfrow = c(2, 1))
curve(f, 0.5, 1, ylab = "P(x) - exp(x ^ 2)")
curve(f, 0,   2, ylab = "P(x) - exp(x ^ 2)")
abline(h = 0, v = 0)

