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

source("c1/newtraphson.R")
# (a)
fa  = function(x) x ^ 5 + x - 1
dfa = function(x) 5 * x ^ 4 + 1
newtraphson(fa, dfa, 1, 1e-8)
# (b)
fb  = function(x) sin(x) - 6 * x - 5
dfb = function(x) cos(x) - 6
newtraphson(fb, dfb, 1, 1e-8)
# (c)
fc  = function(x) log(x) + x ^ 2 - 3
dfc = function(x) 1 / x + 2 * x
newtraphson(fc, dfc, 1, 1e-8)

