class Weather
  def forecast
    rand(1) < 0.8 ? (:stormy) : (:sunny)
  end
end
