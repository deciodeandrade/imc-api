require 'rails_helper'
module ImcSpecHelper

    class ImcSpecHelper
        attr_accessor :person_data, :token, :result_wait, :dados_enviados_json, :dados_esperados_json
        
        def initialize
            self.person_data = {height: 1.70, weight: 76}
            self.token = "KJgjhKLJKV657yKOLJ9HyurVHBIJ"
            self.result_wait = {classification: "Sobrepeso", obesity: 0, imc: 26.3}
        end
    end
end