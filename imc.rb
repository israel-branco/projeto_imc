puts "Digite seu peso(kg):"
peso = gets.to_i
puts "digite sua altura(cm):"
altura = gets.to_i
altura_quadrado =((altura / 100.to_f) ** 2)
imc = peso / altura_quadrado
peso_ideal = peso - (21.5*altura_quadrado)

mensagem_acima_peso = " você tem que perder #{peso_ideal} kg"

mensagem_imc =  "Obesidade grau III" + mensagem_acima_peso  if imc >= 40 
mensagem_imc =  "obesidade grau II" + mensagem_acima_peso if (imc < 40) && (imc >=35)    
mensagem_imc =  "obesidade grau I" + mensagem_acima_peso if (imc < 35) && (imc >= 30) 
mensagem_imc =  "sobrepeso" + mensagem_acima_peso if (imc < 30) && (imc >= 25) 
mensagem_imc =  "peso normal" if (imc < 25) && (imc >= 18)
mensagem_imc =  "abaixo do peso" + mensagem_acima_peso if  imc < 18

def monta_linha(atributo, valor)
    espacos_em_branco = 7
    tamanho_do_atributo = atributo.length
    tamanho_do_valor = valor.length
    coluna_1 = ' ' * (espacos_em_branco-tamanho_do_atributo/2) + atributo + ' ' * (espacos_em_branco-tamanho_do_atributo/2)
    coluna_2 = ' ' * (espacos_em_branco-tamanho_do_valor/2) + valor + ' ' * (espacos_em_branco-tamanho_do_valor/2)
    puts '*' + coluna_1 +'*' + coluna_2 + '*'
    puts '*' * 32
end


###############################################
def monta_ultima_linha(mensagem)
    puts '*' + coluna_1 +'*' + coluna_2 + '*'
end
##############################################

puts '*' * 32
puts '*' + ' ' * 13 + 'IMC' + ' ' * 14 + '*'
puts '*' * 32
monta_linha('peso', peso.to_s +  "KG")
monta_linha('altura', altura.to_s)
monta_linha('IMC', imc.round(2).to_s)
monta_linha('peso_i', peso_ideal.round(2).to_s)
puts '*' + ' ' *15 + ' ' * 15 + '*'
monta_ultima_linha(mensagem_imc)
puts '*' + ' ' *15 + ' ' * 15 + '*'
puts '*' * 32
