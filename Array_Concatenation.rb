arr1 = [1, 2, 3]
arr2 = [4, 5, 6]
arr3 = [7, 8, 9]

arr4 = arr1 + arr2  # => [1, 2, 3, 4, 5, 6]
arr4.concat(arr3)  # => [1, 2, 3, 4, 5, 6, 7, 8, 9]

#-----------------------------------------------------------
#Or use flatten(1):

# concat multiple arrays:
[arr1,arr2,arr3].flatten(1)

# ignore nil:
[arr1,arr2,arr3].compact.flatten(1)
 
