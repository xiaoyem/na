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
IQI=function(f,x1,x2,x3,tol=1e-5,maxit=20){
  a=x1
  b=x2
  c=x3
  for(jit in 1:maxit){
    q=f(a)/f(b)
    r=f(c)/f(b)
    s=f(c)/f(a)
    d=c-(r*(r-q)*(c-b)+(1-r)*s*(c-a))/((q-1)*(r-1)*(s-1))
    a=b
    b=c
    c=d
    if(abs(c-b)<tol) return (c(c,jit))
  }
  print("maximum number of iterations exceeded.")
}