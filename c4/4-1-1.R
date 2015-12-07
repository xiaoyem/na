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
A=matrix(c(3,4,-3,1,-2,-1,1,2,1,0,2,0,1,5,3),nrow=5,ncol=3)
y=matrix(c(10,10,-5,15,0),nrow=5,ncol=1)
c=solve(t(A)%*%A,t(A)%*%y)