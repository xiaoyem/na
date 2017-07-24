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

source("c1/fpi.R")
# (a)
fa = function(x) (1 - x) ^ (1 / 5)
fpi(fa, 0.5, 0.5e-8)
# (b)
fb = function(x) (sin(x) - 5) / 6
fpi(fb, 0.5, 0.5e-8)
# (c)
fc = function(x) (3 - log(x)) ^ (1 / 2)
fpi(fc, 0.5, 0.5e-8)

