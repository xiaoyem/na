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

source("c2/gseliminate.R")
# (a)
Aa = matrix(c( 2, -2, -1,
               4,  1, -2,
              -2,  1, -1), ncol = 3, byrow = TRUE)
ba = matrix(c(-2, 1, -3))
gseliminate(Aa, ba)
# (b)
Ab = matrix(c(1,  2, -1,
              0,  3,  1,
              2, -1,  1), ncol = 3, byrow = TRUE)
bb = matrix(c(2, 4, 2))
gseliminate(Ab, bb)
# (c)
Ac = matrix(c( 2,  1, -4,
               1, -1,  1,
              -1,  3, -2), ncol = 3, byrow = TRUE)
bc = matrix(c(-7, -2, 6))
gseliminate(Ac, bc)

