def divisores_de(num)
	d = 2
	n = 2
	max = num/2
	while n< max do 
		if (num % n) ==0 
			max = num / n
			if max == n
				d += 1		
			else
				d += 2			
			end
		end
		n += 1
	end		
	return d
end

c_ant = 0
fibn_2  = 1836311903
fibn_1 = 2971215073 

begin
	fibn = fibn_1 + fibn_2	
	divisores = divisores_de(fibn)	
	if divisores > c_ant 
		c_ant = divisores
		puts "Num: #{fibn} => f-1 #{fibn_1} f-2 #{fibn_2}\n"
		puts "Num: #{fibn} tiene #{c_ant}\n" 
	end
	fibn_2 = fibn_1
	fibn_1 = fibn	
end while divisores < 1000

