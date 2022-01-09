require "rails_helper"
require "spec_helpers/requests/imc_spec_helper"

RSpec.describe "Imc", type: :request do
    describe "POST /imc" do
        help = ImcSpecHelper::ImcSpecHelper.new
        person_data = help.person_data.to_json
        result_wait = help.result_wait.to_json
        
        context "Have Authentication" do
            it "returns success status" do
                post "/imc", params: person_data
                expect(response).to have_http_status(:success)
            end

            it "the data's imc is present" do
                post "/imc", params: person_data
                expect(response.body).to include result_wait
            end
        end
    end
end