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

source("c6/euler2.R")
# (a)
ydot = function(t, y) c(y[2] + y[1], - y[1] + y[2])
res = euler2(c(0, 1), c(1, 0), 10)
res
c(abs(unlist(res[2])[11]  - exp(1) * cos(1)), abs(unlist(res[4])[11]  + exp(1) * sin(1)))
res = euler2(c(0, 1), c(1, 0), 100)
res
c(abs(unlist(res[2])[101] - exp(1) * cos(1)), abs(unlist(res[4])[101] + exp(1) * sin(1)))
# (b)
ydot = function(t, y) c(- y[1] - y[2], y[1] - y[2])
res = euler2(c(0, 1), c(1, 0), 10)
res
c(abs(unlist(res[2])[11]  - exp(-1) * cos(1)), abs(unlist(res[4])[11]  - exp(-1) * sin(1)))
res = euler2(c(0, 1), c(1, 0), 100)
res
c(abs(unlist(res[2])[101] - exp(-1) * cos(1)), abs(unlist(res[4])[101] - exp(-1) * sin(1)))
# (c)
ydot = function(t, y) c(- y[2], y[1])
res = euler2(c(0, 1), c(1, 0), 10)
res
c(abs(unlist(res[2])[11]  - cos(1)), abs(unlist(res[4])[11]  - sin(1)))
res = euler2(c(0, 1), c(1, 0), 100)
res
c(abs(unlist(res[2])[101] - cos(1)), abs(unlist(res[4])[101] - sin(1)))
# (d)
ydot = function(t, y) c(y[1] + 3 * y[2], 2 * y[1] + 2 * y[2])
res = euler2(c(0, 1), c(5, 0), 10)
res
c(abs(unlist(res[2])[11]  - 3 * exp(-1) - 2 * exp(4)), abs(unlist(res[4])[11]  + 2 * exp(-1) - 2 * exp(4)))
res = euler2(c(0, 1), c(5, 0), 100)
res
c(abs(unlist(res[2])[101] - 3 * exp(-1) - 2 * exp(4)), abs(unlist(res[4])[101] + 2 * exp(-1) - 2 * exp(4)))

