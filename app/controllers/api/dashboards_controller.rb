class Api::DashboardsController < ApplicationController

  def customer_journey
    render json: {
        data: [55, 32, 4, 3],
        labels: ['registration', 'create_project', 'live_data_received', 'action']
    }
  end

  def actual_status
    render json: {
        ipsum_metric: EventType.find_by_name('ipsum_metric').summarize,
        infinario_valuation: EventType.find_by_name('infinario_valuation').summarize,
        blog_visits: EventType.find_by_name('blog_visits').summarize,
        hp_visits: EventType.find_by_name('hp_visits').summarize
    }

  end

end
