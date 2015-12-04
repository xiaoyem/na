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
splinecoeffcurvature=function(x,y){
  n=length(x)
  v1=0
  vn=0
  A=matrix(0,nrow=n,ncol=n)
  r=matrix(0,nrow=n,ncol=1)
  dx=matrix(nrow=n,ncol=1)
  dy=matrix(nrow=n,ncol=1)
  coe=matrix(nrow=n,ncol=3)
  for(i in 1:(n-1)){  
    dx[i] = x[i+1]-x[i]
    dy[i]=y[i+1]-y[i];
  }
  for(i in 2:(n-1)){
    A[i,i-1]=c(dx[i-1])
    A[i,i]=c(2*(dx[i-1]+dx[i]))
    A[i,i+1]=c(dx[i])
    r[i]=3*(dy[i]/dx[i] - dy[i-1]/dx[i-1])
  }
 
  # curvature-adj conditions
  A[1,1]=2
  r[1]=v1     
  A[n,n]=2
  r[n]=vn
 
  coe[,2]=solve(A,r) 
  for (i in 1:n-1){
    coe[i,3]=(coe[i+1,2]-coe[i,2])/(3*dx[i]);
    coe[i,1]=dy[i]/dx[i]-dx[i]*(2*coe[i,2]+coe[i+1,2])/3;
  }
  coe=coe[1:n-1,1:3]
  return(coe)
}