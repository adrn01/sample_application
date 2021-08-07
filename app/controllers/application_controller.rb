# frozen_string_literal: true

# Controller with sample endpoints and "mock services"
class ApplicationController < ActionController::Base
  def endpoint_1
    # call service_1
    res = Faraday.get service_1_url, s1: params['s1']
    Rails.logger.info({ message: "service_1 status: #{res.status}" }.as_json)

    # call service_2
    res = Faraday.get service_2_url, s2: params['s2']
    Rails.logger.info({ message: "service_2 status: #{res.status}" }.as_json)

    # return
    render html: '<p>Request complete</p>', status: :ok
  end

  def service_1
    # wait a while
    s1 = params['s1'].to_i || 0
    sleep s1

    # return
    render html: nil, status: :ok
  end

  def service_2
    # interact with SampleModel
    s2 = params['s2'].to_i || 0
    SampleModel.process(number_of_iterations: s2)

    # return
    render html: nil, status: :ok
  end
end
