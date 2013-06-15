module Algorithms::Sort
  def self.bubble_sort(container)
    loop do
      swapped = false
      (container.size - 1).times do |i|
        if (container[i] <=> container[i + 1]) == 1
        container[i], container[i + 1] = container[i + 1], container[i]
          swapped = true
      end
      breake unless swapped
    end
    container
  end
end