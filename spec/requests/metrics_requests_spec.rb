require "rails_helper"

RSpec.describe MetricsController, type: :request do
  subject { response }

  describe "POST /create" do
    let(:valid_params) do
      {
        metric: {
          name: Faker::Name.unique.name,
          value: Faker::Number.number(digits: 3),
          timestamp: Faker::Date.between(from: 1.year.ago , to: Date.today)
        }
      }
    end

    before do
      post "/metrics", params: valid_params
    end

    it { is_expected.to have_http_status(:found) }

    it "check metric" do
      metric = Metric.last
      expect(metric.name).to eq valid_params[:metric][:name]
      expect(metric.value).to eq valid_params[:metric][:value]
      expect(metric.timestamp).to eq valid_params[:metric][:timestamp]
    end

  end
end
