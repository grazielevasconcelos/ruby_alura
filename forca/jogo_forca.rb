def da_boas_vindas
  puts 'Bem-vindo ao jogo da forca'
  puts 'Meu querido(a) competidor qual é o seu nome? '
  nome = gets.strip
end

def joga
  palavra_secreta= sorteia_palavra_secreta

  erros = 0
  chutes = []
  pontos_ate_agora = 0

  puts "Você ganhou #{pontos_ate_agora} pontos."
  
  puts 'Faça o seu chute para a palavra secreta'
  chute = gets.strip

  respota = chute.eq sorteia_palavra_secreta
  puts resposta
end 

def sorteia_palavra_secreta
  palavra_secreta = 'programador'
end

def nao_quer_jogar?
  puts 'Você deseja jogar ? (S/N)'
  quer_jogar = gets.strip
  nao_quer_jogar = quer_jogar.upcase == 'N'
end

nome = da_boas_vindas

loop do
  joga nome
  break if nao_quer_jogar?
end 
