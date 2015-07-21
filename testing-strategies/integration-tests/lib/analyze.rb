class Analyze

  def analysis(data)
    sanitized_data = sanitize(data)
    counter = counter(sanitized_data)
    sorted_metrics(metrics(counter))
  end

  def sanitize(data)
    data.downcase.gsub(/[^a-z0-9\s]/i, '')
  end

  def counter(data)
    data.split.inject({}) do |hash, x|
      if hash[x].nil?
        hash[x] = 1
      else
        hash[x] += 1
      end
      hash
    end
  end

  def metrics(data)
    data.sort_by { |key, value| value }.reverse.first(5)
  end

  def sorted_metrics(data)
    data.reverse.first(5)
  end

end
