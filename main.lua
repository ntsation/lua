math.randomseed(os.time())
local numeroSecreto = math.random(1, 100)

function lerEntrada()
   io.write("Adivinhe o número de 1 a 100: ")
   return io.read("n")
end 

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

jogo()