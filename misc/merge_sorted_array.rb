# def merge(nums1, m, nums2, n)
#   return nums1 if nums2.length == 0
#   return nums2 if nums1.length == 0
#
#   pointer1 = 0
#   pointer2 = 0
#   result = []
#
#   while pointer1 < nums1.length && pointer2 < nums2.length
#     if nums1[pointer1] > nums2[pointer2]
#       result.push(nums2[pointer2])
#       pointer2 += 1
#     else
#       result.push(nums1[pointer1])
#       pointer1 += 1
#     end
#   end
#
#   if pointer1 >= nums1.length
#     while pointer2 < nums2.length
#       result.push(nums2[pointer2])
#       pointer2 += 1
#     end
#   elsif pointer2 >= nums2.length
#     while pointer1 < nums1.length
#       result.push(nums1[pointer1])
#       pointer1 += 1
#     end
#   end
#
#   return result
# end

def merge(nums1, m, nums2, n)
  index = m + n - 1

  while n - 1 >= 0
    if m - 1>= 0 && nums1[m - 1] > nums2[n - 1]
      nums1[index] = nums1[m - 1]
      m -= 1
    else
      nums1[index] = nums2[n - 1]
      n -= 1
    end

    index -= 1
  end

  return nums1
end

p merge([1,11,12,13,14,15,16], 7, [2,4,6,8,10], 5)
p merge([0], 0, [1], 1)
