# frozen_string_literal: true

# Metrics
class MetricsController < ApplicationController
  def index
    puts params
    metrics = Metric.calculate(params[:from], params[:to])
    @metrics = metrics.group(:name).send("group_by_#{resolve_grouping}".to_sym, :timestamp).average(:value)
  end

  def show
    @metric = Metric.find(params[:id])
  end

  def new
    @metric = Metric.new
  end

  def create
    @metric = Metric.new(metric_params)
    if @metric.save
      redirect_to metrics_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def resolve_grouping
    return params[:group_by] if %w[minute hour day].include?(params[:group_by])

    'day'
  end

  def metric_params
    params.require(:metric).permit(:name, :value, :timestamp)
  end
end