require "rails_helper"
require './lib/imc_calculator'
require 'spec_helpers/imc_spec_helper'

include ImcCalculator

RSpec.describe "Imc", type: :request do
    describe "POST /imc" do
        authorization = ImcSpecHelper::authorization
        person_data = ImcSpecHelper::person_data
        result_wait = table_imc_calculate(person_data[:height], person_data[:weight])

        context "Have Authentication" do
            it "returns success status" do
                post "/imc", params: person_data, headers: authorization
                expect(response).to be_successful
            end

            it "the data's imc is present" do
                post "/imc", params: person_data, headers: authorization
                expect(response.body).to eq result_wait.to_json
            end
        end
    end
end