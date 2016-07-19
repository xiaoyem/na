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

lufactorize = function(A) {
    n = nrow(A)
    l = matrix(0, n, n)
    for (i in 1:(n - 1)) {
        if (abs(A[i, i]) < .Machine$double.eps) {
            cat("zero pivot encountered\n")
            return(NULL)
        }
        l[i, i] = 1
        for (j in (i + 1):n) {
            l[j, i] = A[j, i] / A[i, i]
            for (k in i:n) {
                A[j, k] = A[j, k] - l[j, i] * A[i, k]
            }
        }
    }
    l[n, n] = 1
    list(L = l, U = A)
}

