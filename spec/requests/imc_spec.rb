require "rails_helper"
require './lib/imc_calculator'
include ImcHelper

RSpec.describe "Imc", type: :request do
    describe "POST /imc" do
        #Valores de entrada sendo gerados aleatoriamente
        height = rand(0.0..3.0).round(2)
        weight = rand(0..400)

        #Valores de saída sendo calculados
        imc = imc_calculate(height, weight)
        table = classification_and_obesity_calculate(imc)
        classification = table[:classification]
        obesity = table[:obesity]

        #Dados de entrada e saída sendo estruturados
        person_data = {
            "height": height,                            #1.70, -> exemplo
            "weight": weight,                            #76 -> exemplo
        }
        result_wait = {
            "imc": imc,                                 #26.3, -> exemplo
            "classification": classification,            #"Sobrepeso", -> exemplo
            "obesity": obesity                          #"0" -> exemplo 
        }
        
        context "Have Authentication" do
            it "returns success status" do
                post "/imc", params: person_data
                expect(response).to be_successful
            end

            it "the data's imc is present" do
                post "/imc", params: person_data
                expect(response.body).to eq result_wait.to_json
            end
        end
    end
end