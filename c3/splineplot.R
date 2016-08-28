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

splineplot = function(x, y, k) {
    n = length(x)
    coeff = splinecoeff(x, y)
    x1 = c(); y1 = c()
    for (i in 1:(n - 1)) {
        xs = seq(x[i], x[i + 1], length.out = k + 1)
        dx = xs - x[i]
        ys = coeff[i, 3] * dx
        ys = (ys + coeff[i, 2]) * dx
        ys = (ys + coeff[i, 1]) * dx + y[i]
        x1 = c(x1, xs[1:k]); y1 = c(y1, ys[1:k])
    }
    x1 = c(x1, x[n]); y1 = c(y1, y[n])
    plot(x1, y1, type = 'l')
    points(x, y)
}

