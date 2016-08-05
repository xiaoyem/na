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

gramschmidt = function(A) {
    n = ncol(A)
    r = matrix(0, n, n)
    q = matrix(0, nrow(A), n)
    for (i in 1:n) {
        y = A[, i]
        if (i > 1) {
            for (j in 1:(i - 1)) {
                r[j, i] = t(q[, j]) %*% A[, i]
                y = y - t(r[j, i] %*% q[, j])
            }
        }
        r[i, i] = sqrt(sum(y ^ 2))
        q[, i] = y / r[i, i]
    }
    list(Q = q, R = r)
}

# (a)
Aa = matrix(c(4, 0,
              3, 1), ncol = 2, byrow = TRUE)
gramschmidt(Aa)
res = qr(Aa)
qr.Q(res)
qr.R(res)
# (b)
Ab = matrix(c(1, 2,
              1, 1), ncol = 2, byrow = TRUE)
gramschmidt(Ab)
res = qr(Ab)
qr.Q(res)
qr.R(res)
# (c)
Ac = matrix(c(2,  1,
              1, -1,
              2,  1), ncol = 2, byrow = TRUE)
gramschmidt(Ac)
res = qr(Ac)
qr.Q(res)
qr.R(res)
# (d)
Ad = matrix(c(4, 8,  1,
              0, 2, -2,
              3, 6,  7), ncol = 3, byrow = TRUE)
gramschmidt(Ad)
res = qr(Ad)
qr.Q(res)
qr.R(res)

