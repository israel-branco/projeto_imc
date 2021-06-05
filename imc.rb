puts "Digite seu peso:"
peso = gets.to_i
puts "digite sua altura:"
altura = gets.to_i
imc = peso / (altura.to_i ** 2)

if imc >= 40 
    puts "Obesidade grau III"
elsif (imc < 40) || (imc >=35) 
    puts "obesidade grau II"    
elsif (imc < 35) || (imc >= 30) 
    puts "obesidade grau I"
elsif (imc < 30) || (imc >= 25) 
    puts "sobrepeso"
elsif (imc < 25) || (imc >= 18)
    puts "peso normal"
elsif  imc < 18
    puts "abaixo do peso"
end

