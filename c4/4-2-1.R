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
B=matrix(c(1,1,1,1,1,1,1,1,1,1,1,1,cos(pi/12),cos(pi/12*2),cos(pi/12*3),cos(pi/12*4),cos(pi/12*5),cos(pi/12*6),cos(pi/12*7),cos(pi/12*8),cos(pi/12*9),cos(pi/12*10),cos(pi/12*11),cos(pi/12*12),sin(pi/12),sin(pi/12*2),sin(pi/12*3),sin(pi/12*4),sin(pi/12*5),sin(pi/12*6),sin(pi/12*7),sin(pi/12*8),sin(pi/12*9),sin(pi/12*10),sin(pi/12*11),sin(pi/12*12),cos(2*pi/12),cos(2*pi/12*2),cos(2*pi/12*3),cos(2*pi/12*4),cos(2*pi/12*5),cos(2*pi/12*6),cos(2*pi/12*7),cos(2*pi/12*8),cos(2*pi/12*9),cos(2*pi/12*10),cos(2*pi/12*11),cos(2*pi/12*12)),nrow=12,ncol=4)
b=matrix(c(6.224,6.665,6.241,5.302,5.073,5.127,4.994,5.012,5.108,5.377,5.510,6.372),nrow=12,ncol=1)
c=solve((t(B)%*%B),(t(B)%*%b))
xhat=seq(1/12,1,1/180)
yhat=c[1]+c[2]*cos(pi*xhat)+c[3]*sin(pi*xhat)+c[4]*cos(2*pi*xhat)
plot(pi*xhat,yhat,type="l")
x0=seq(1/12,1,1/12)
y0=t(b)
points(x0*pi,y0,pch=20,cex=0.8,col="red")
plot(pi*xhat,yhat,type="l")
points(x0*pi,y0,pch=20,cex=0.8,col="red")