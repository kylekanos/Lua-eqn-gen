-- This code will print out the full set of equations of the form
--
-- -k_{i-1/2,j}Y_{i-1,j}-k_{i+1/2,j}Y_{i+1,j}-k_{i,j-1/2}Y_{i,j-1}-k_{i,j+1/2}Y_{i,j+1}+d_{i,j}Y_{i,j}=b_{i,j}
--
-- This works for any size domain (i.e., j does not have to be equal to i)

imax=4
jmax=4
newline=[[ \\]] -- Latex newline command

for j=1,jmax do
   for i=1,imax do
      if i<imax then io.write("-\\kappa_{\\frac",2*(i+.5),"2,",j,"}\\psi_{",i+1,",",j,"}") end
      if i>1    then io.write("-\\kappa_{\\frac",2*(i-.5),"2,",j,"}\\psi_{",i-1,",",j,"}") end
      if j<jmax then io.write("-\\kappa_{",i,",\\frac",2*(j+.5),"2}\\psi_{",i,",",j+1,"}") end
      if j>1    then io.write("-\\kappa_{",i,",\\frac",2*(j-.5),"2}\\psi_{",i,",",j-1,"}") end
      io.write("+\\eta_{",i,",",j,"}\\psi_{",i,",",j,"}&=&b_{",i,",",j,"} \\nonumber",newline,"\n")
   end
   if j < jmax then io.write(" && \\nonumber",newline,"\n") end
end
