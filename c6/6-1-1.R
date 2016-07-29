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
ydot = function(t, y) {
    z = t
}
euler(c(0, 1), 1, 10)
# (b)
ydot = function(t, y) {
    z = t ^ 2 * y
}
euler(c(0, 1), 1, 10)
# (c)
ydot = function(t, y) {
    z = 2 * (t + 1) * y
}
euler(c(0, 1), 1, 10)
# (d)
ydot = function(t, y) {
    z = 5 * t ^ 4 * y
}
euler(c(0, 1), 1, 10)
# (e)
ydot = function(t, y) {
    z = 1 / y ^ 2
}
euler(c(0, 1), 1, 10)
# (f)
ydot = function(t, y) {
    z = t ^ 3 / y ^ 2
}
euler(c(0, 1), 1, 10)

