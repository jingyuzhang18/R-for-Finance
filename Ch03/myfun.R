mat_power = function(A, n){
  Apower=A
  for (i in 2:n) Apower= Apower %*% A
  return(Apower)
}