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

  def self.quicksort(container)
    bottom, top = [], []
    top[0] = 0
    bottom[0] = container.size
    i = 0
    while i >= 0 do
      l = top[i]
      r = bottom[i] - 1
      if l < r
        pivot = container[l]
        while l < r do
          r -= while (container[r] >= pivot && l < r)
          if l < r
            container[l] = container[r]
            l += 1
          end
          l += 1 while (container[l] <= pivot  && l < r)
          if l < r
            container[r] = container[l]
            r -= 1
          end
        end
        container[l] = pivot
        top[i+1] = l + 1
        bottom[i+1] = bottom[i]
        bottom[i] = l
        i += 1
      else
        i -= 1
      end
    end
    container
  end

  def self.mergesort(container)
    return container if container.size <= 1
    mid = container.size / 2
    left = container[0...mid]
    right = container[mid...container.size]
    merge(mergesort(left), mergesort(right))
  end

  def self.merge(left, right)
    sorted = []
    until left.empty? or right.empty?
      left.first <= right.first ? sorted << left.shift : sorted << right.shift
    end
    sorted + left + right
  end
end