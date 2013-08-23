def divisores_de_new(num)
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

def divisores_de(num)
	d = 1
	(1..(num/2)).each { |n| d += 1 if (num % n) ==0 }
	return d
end

NUM = 1548008755920       

ti = Time.now
d = divisores_de_new(NUM)
tf = Time.now
puts tf-ti
puts d

fibn_2  = 0
fibn_1 = 1

begin
	fibn = fibn_1 + fibn_2		
	if fibn == 1548008755920   		
		puts "Num: #{fibn} => f-1 #{fibn_1} f-2 #{fibn_2}\n" 
	end	
	fibn_2 = fibn_1
	fibn_1 = fibn	
end while fibn <= 1548008755920 