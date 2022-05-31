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

    it { expect(response).to redirect_to(metrics_path)  }

    it "check metric" do
      metric = Metric.last
      expect(metric.name).to eq valid_params[:metric][:name]
      expect(metric.value).to eq valid_params[:metric][:value]
      expect(metric.timestamp).to eq valid_params[:metric][:timestamp]
    end

  end

  describe "request list of metrics" do
    it "return a metric" do
      metric = create(:metric)
      get metrics_path
      expect(response).to be_successful
      expect(response.body).to include(metric.name)
    end
  end

  describe "GET index" do
    it "renders the index template" do
      get '/metrics'
      expect(response).to render_template("index")
    end
  end
end
