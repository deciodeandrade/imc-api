module ImcCalculator
    require "bmi_calculator"

    def imc_calculate height, weight
        BmiCalculator.calc_m(height, weight)
    end
  
    def classification_and_obesity_calculate imc
        case imc 
        when 0.0..18.5
            {classification: "Magro", obesity: "0"}
        when 18.5..24.9
            {classification: "Normal", obesity: "0"}
        when 25.0..29.9
            {classification: "Sobrepeso", obesity: "0"}
        when 30.0..34.9
            {classification: "Obesidade", obesity: "I"}
        when 35.0..39.9
            {classification: "Obesidade", obesity: "II"}
        else
            {classification: "Obesidade grave", obesity: "III"}
        end
    end
end