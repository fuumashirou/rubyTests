# suma los valores del array y devuelve las posiciones que al sumarlas sean igual al resultado ingresado
def get_umbers_index(data_array, result)

	data_array_copy = data_array.clone 
	numbers_index = {}

	data_array.each do |index,data|
		data_array_copy.each do |index_copy, data_copy|
			if(data_array.index(data) != data_array.index(data_copy))
				if ((data + data_copy) == result)
					if(numbers_index.count == 0)
						numbers_index = {:pos1 => data_array.index(data), :pos2 => data_array_copy.index(data_copy)}
						puts numbers_index
					end
				end
			end
		end
	end

	numbers_index	

end