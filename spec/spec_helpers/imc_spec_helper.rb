require './lib/imc_calculator'
include ImcCalculator
module ImcSpecHelper

    def self.authorization
        authorization = {
            #Única chave permanente. Seu uso só funciona em ambientes de teste e desenvolvimento.
            Authorization: "teste_automatizado_123"
        }        
    end

    def self.person_data
        #Valores de entrada sendo gerados aleatoriamente
        height = rand(0.0..3.0).round(2)
        weight = rand(0..400)

        #Dados de entrada e saída sendo estruturados
        person_data = {
            height: height,                            #1.70, -> exemplo
            weight: weight                             #76 -> exemplo
        }
    end
end