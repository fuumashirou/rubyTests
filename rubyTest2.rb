# suma los valores del array y devuelve las posiciones que al sumarlas sean igual al resultado ingresado
def get_umbers_index(data_array, result)
	numbers_index = {}
	total_elements = data_array.count
	index_founded = 0

	data_array.each_with_index do |data, index|
		aux_index = index +1

		while(aux_index < total_elements)
			if((data + data_array[aux_index]) == result)
				index_founded = aux_index
			end
			aux_index += 1
		end

		if (index_founded != 0)
			puts "index = #{index} + index+1 = #{index_founded}"
			numbers_index = {:pos1 => index, :pos2 => (index_founded)}
			return numbers_index
		end

	end

end