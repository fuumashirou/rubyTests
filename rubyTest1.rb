# Devuelve el número de columna de un
def coord_value(str)
	str.downcase.split('').map{|e| ('a'..'z').to_a.index(e)+1 }.inject{|a,b| a*26 + b}
end

