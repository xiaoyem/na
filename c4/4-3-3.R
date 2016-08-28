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

hhreflect = function(A) {
    m = nrow(A)
    n = ncol(A)
    Q = diag(rep(1, m))
    for (i in 1:ifelse(m - 1 > n, n, m - 1)) {
        x = A[i:m, i]
        l = length(x)
        w = rep(0, l)
        w[1] = sqrt(sum(x ^ 2))
        v = w - x
        P = v %*% t(v) / as.numeric(t(v) %*% v)
        I = diag(rep(1, l))
        H = I - 2 * P
        while (l < m) {
            H = cbind(rep(0, l), H)
            H = rbind(rep(0, l + 1), H)
            H[1, 1] = 1;
            l = l + 1;
        }
        Q = Q %*% H
        A = H %*% A
    }
    list(Q = Q, R = A)
}
# (a)
Aa = matrix(c(4, 0,
              3, 1), ncol = 2, byrow = TRUE)
hhreflect(Aa)
# (b)
Ab = matrix(c(1, 2,
              1, 1), ncol = 2, byrow = TRUE)
hhreflect(Ab)
# (c)
Ac = matrix(c(2,  1,
              1, -1,
              2,  1), ncol = 2, byrow = TRUE)
hhreflect(Ac)
# (d)
Ad = matrix(c(4, 8,  1,
              0, 2, -2,
              3, 6,  7), ncol = 3, byrow = TRUE)
hhreflect(Ad)

