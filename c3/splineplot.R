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
splineplot=function(x,y,k){
n=length(x) 
coe=splinecoeff(x,y);
x1=matrix()
y1=matrix()
for(i in 1:(n-1)){           
xs=seq(x[i],x[i+1],length.out=k+1)
dx=xs-x[i]
ys=coe[i,3]*dx
ys=(ys+coe[i,2])*dx
ys=(ys+coe[i,1])*dx+y[i]
x1=cbind(x1,t(xs[1:k]))
y1=cbind(y1,t(ys[1:k]))
}
x1=cbind(x1,x[n])
y1=cbind(y1,y[n])
plot(x1,y1,type = "l")
points(x,y)
}