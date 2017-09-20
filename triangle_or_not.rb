def triangleOrNot(a, b, c)
  index = 0
  result = []

  while index < a.length
    s = (a[index] + b[index] + c[index]).to_f / 2
    herons = s * (s - a[index]) * (s - b[index]) * (s - c[index])

    if herons <= 0
      result.push('No')
    else
      result.push('Yes')
    end

    index += 1
  end

  result
end

p triangleOrNot([7,10,7,1], [2,3,4,1], [2,7,4,1])
