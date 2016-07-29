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

a = 7 ^ 5
m = 2 ^ 31 - 1
x0 = 1
ct = 0
for (i in 1:10 ^ 6) {
    x1 = (a * x0) %% m
    u1 = x1 / m
    x2 = (a * x1) %% m
    u2 = x2 / m
    x3 = (a * x2) %% m
    u3 = x3 / m
    if (sqrt((u1 - 1 / 3) ^ 2 + (u2 - 1 / 3) ^ 2 + (u3 - 1 / 2) ^ 2) <= 0.04) {
        ct = ct + 1
    }
    x0 = x3
}
ct / 10 ^ 6
4 / 3 * pi * 0.04 ^ 3

