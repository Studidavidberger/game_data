-- Déclare la variable index
index = io.read("*n")
cent = 100

-- Determiné si le nombre
-- est signé ou non
function Is_Signed ()
  if var_1 > 0 then
    var_1 = 1
    else
      var_1 = -1
  end
  print(var_1)
    
end


-- Trouver les nombre paires
-- entre 0 ET 100
function Is_even ()
while index <= cent do
  
  if index % 2 == 0 then
    print( index )
  end
  
  index = index + 1
end
end

Is_even()
