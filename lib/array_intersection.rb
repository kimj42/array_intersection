# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)
  # raise NotImplementedError
  return [] if !array1 || !array2 || array1 == [] || array2 == []

  i = 0
  m = array1.length
  h = {}

  while i < m
    if h[array1[i]]
      h[array1[i]] += 1
    else
      h[array1[i]] = 1
    end

    i += 1
  end

  i = 0
  while i < m
    if h[array2[i]]
      h[array2[i]] += 1
    else
      h[array2[i]] = 1
    end

    i += 1
  end

  i = 0
  intersection = []
  while i < m
    if h[array1[i]] >= 2
      intersection << array1[i]
    end

    i += 1
  end

  return intersection
end
