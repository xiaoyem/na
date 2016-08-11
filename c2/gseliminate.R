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

gseliminate = function(A, b) {
    n = nrow(A)
    for (i in 1:(n - 1)) {
        if (abs(A[i, i]) < .Machine$double.eps) {
            stop("zero pivot encountered")
        }
        for (j in (i + 1):n) {
            multi = A[j, i] / A[i, i]
            # more efficient
            for (k in (i + 1):n) {
                A[j, k] = A[j, k] - multi * A[i, k]
            }
            b[j] = b[j] - multi * b[i]
        }
    }
    x = rep(0, n)
    for (i in n:1) {
        if (i < n) {
            for (j in (i + 1):n) {
                b[i] = b[i] - A[i, j] * x[j]
            }
        }
        x[i] = b[i] / A[i, i]
    }
    x
}

