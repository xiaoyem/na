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

source("c1/fpi.R")
# (a)
fa = function(x) (2 * x + 2 / x ^ 2) / 3
fpi(fa, 1, 0.5e-8)
# (b)
fb = function(x) (2 * x + 3 / x ^ 2) / 3
fpi(fb, 1, 0.5e-8)
# (c)
fc = function(x) (2 * x + 5 / x ^ 2) / 3
fpi(fc, 1.5, 0.5e-8)

