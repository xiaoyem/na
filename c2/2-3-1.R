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

# (a)
Aa = matrix(0, 6, 6)
for (i in 1:6) {
    for (j in 1:6) {
        Aa[i, j] = 5 / (i + 2 * j - 1)
    }
}
xa = matrix(1, 6, 1)
ba = Aa %*% xa
xc = solve(Aa, ba)
fe = norm(xa - xc, "I")
fe
(fe / norm(xa, "I")) / (norm(ba - Aa %*% xc, "I") / norm(ba, "I"))
norm(Aa, "I") * norm(solve(Aa), "I")
# (b)
Ab = matrix(0, 10, 10)
for (i in 1:10) {
    for (j in 1:10) {
        Ab[i, j] = 5 / (i + 2 * j - 1)
    }
}
xb = matrix(1, 10, 1)
bb = Ab %*% xb
xc = solve(Ab, bb)
fe = norm(xb - xc, "I")
fe
(fe / norm(xb, "I")) / (norm(bb - Ab %*% xc, "I") / norm(bb, "I"))
norm(Ab, "I") * norm(solve(Ab), "I")

