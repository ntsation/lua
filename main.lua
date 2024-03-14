-- Função para gerar um número aleatório entre 1 e 100
math.randomseed(os.time()) -- Inicializa a semente do gerador de números
local numeroSecreto = math.random(1, 100)

-- Função para ler uma entrada do jogador
function lerEntrada()
   io.write("Adivinhe o número de 1 a 100: ")
   return io.read("n") -- Lê um número
end 

-- Função principal
function jogo()
   local tentativas = 0
   local acertou = false

   print("Bem vindo ao jogo de Adivinhacão!")
   
   while not acertou do
      local palpite = lerEntrada()
      tentativas = tentativas + 1

      if palpite < numeroSecreto then
         print("Tente um número maior.")
      elseif palpite > numeroSecreto then
         print("Tente um número menor.")
      else
         acertou = true
         print("Parabéns! Você acertou o número em " .. tentativas .. " tentativas.")
      end
   end
end

-- Inicializa o jogo
jogo()