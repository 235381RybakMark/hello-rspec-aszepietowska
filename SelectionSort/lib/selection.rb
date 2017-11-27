def SelectionSort(tab)
    n=tab.length
   for i in 0...n 
    min=i
    for j in (i+1)...n
        if tab[j] < tab[min]
            x =tab[j]
            tab[j] = tab[min]
            tab[min] = x
        end
    end
   end
   return tab
end