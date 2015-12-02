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
newtonroot=function(f,df,x0,tol=1e-5,maxit=20){
  root=x0
  for(jit in 1:maxit){
    dx=f(root)/df(root)
    root=root-dx
    if(abs(dx)<tol) return (c(root,jit,dx ))
  }
  print("maximum number of iterations exceeded.")
}
                           
                