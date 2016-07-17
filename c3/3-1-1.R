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
xa = c(1970, 1990)
ya = c(3707475887, 5281653820)
ca = newtdd(xa, ya, 2)
nest(1, ca, 1980, xa)
# (b)
xb = c(1960, 1970, 1990)
yb = c(3039585530, 3707475887, 5281653820)
cb = newtdd(xb, yb, 3)
nest(2, cb, 1980, xb)
# (c)
xc = c(1960, 1970, 1990, 2000)
yc = c(3039585530, 3707475887, 5281653820, 6079603571)
cc = newtdd(xc, yc, 4)
nest(3, cc, 1980, xc)

