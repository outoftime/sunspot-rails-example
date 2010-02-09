module SearchesHelper
  def best_hit_description(hit)
    if highlight = hit.highlight(:body)
      highlight.format { |word| "<strong>#{word}</strong>" }
    else
      h(hit.result.body)
    end
  end
end
