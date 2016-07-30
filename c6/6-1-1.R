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

source("c6/euler.R")
# (a)
ydot = function(t, y) t
res = euler(c(0, 1), 1, 10)
res
abs(sapply(res[1], function(t) 1 + t ^ 2 / 2) - unlist(res[2]))
# (b)
ydot = function(t, y) t ^ 2 * y
res = euler(c(0, 1), 1, 10)
res
abs(sapply(res[1], function(t) exp(t ^ 2 / 3)) - unlist(res[2]))
# (c)
ydot = function(t, y) 2 * (t + 1) * y
res = euler(c(0, 1), 1, 10)
res
abs(sapply(res[1], function(t) exp(t ^ 2 + 2 * t)) - unlist(res[2]))
# (d)
ydot = function(t, y) 5 * t ^ 4 * y
res = euler(c(0, 1), 1, 10)
res
abs(sapply(res[1], function(t) exp(t ^ 5)) - unlist(res[2]))
# (e)
ydot = function(t, y) 1 / y ^ 2
res = euler(c(0, 1), 1, 10)
res
abs(sapply(res[1], function(t) (3 * t + 1) ^ (1 / 3)) - unlist(res[2]))
# (f)
ydot = function(t, y) t ^ 3 / y ^ 2
res = euler(c(0, 1), 1, 10)
res
abs(sapply(res[1], function(t) (3 * t ^ 4 / 4 + 1) ^ (1 / 3)) - unlist(res[2]))

