#
# Copyright (c) 2015 by Xiaoye Meng ,Yuchao Zhao.
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
source("newtonroot.R")
f1=function(x) x^3-2*x-2
df1=function(x) 3*x^2-2
newtonroot(f1,df1,1,1e-8)
f2=function(x) exp(x)+x-7
 df2=function(x) exp(x)+1
 newtonroot(f2,df2,1,1e-8)
 f3=function(x) exp(x)+sin(x)-4
 df3=function(x) exp(x)+cos(x)
 newtonroot(f3,df3,1,1e-8)