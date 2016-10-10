# Busqueda binaria
# Objetivos Académicos
# Uso de condicionales y ciclos
# Comprender como mejorar la eficiencia de un algoritmo
# Actividades
# Para este ejercicio es importante crees un Driver Code con muchas pruebas para verificar que tu algoritmo es correcto y que siempre regresa lo mismo.
# Para este método es importante que el arreglo este ordenado ascendentemente, tampoco puedes utilizar Array#index y te recomendamos mucho que antes de escribir código escribas pseudocódigo. 

array_numbers = [3, 4, 10, 11, 15, 25, 28, 31, 39, 40, 48, 55, 56, 60, 62, 67, 71, 81, 85, 90, 99]
  
def binary_search(num, array)
  dato = num
  inf = 0
  sup = array.length - 1
  count = 1
  while inf < sup
    center = (inf + sup) / 2
      if array[center] > dato
        sup = center - 1
        return sup if array[sup] == dato #return para que se detenga si se igualan los valores
      elsif array[center] < dato 
        inf = center + 1
        return inf if array[inf] == dato
      else 
        array[center] == dato
        return center
      end
      count += 1
  end
end

p binary_search(56, array_numbers) #== 12
p binary_search(11, array_numbers) #== 3
p binary_search(28, array_numbers) #== 6
p binary_search(85, array_numbers) #== 18
p binary_search(40, array_numbers) #== 9
p binary_search(62, array_numbers) #== 14