# 声明测试的数组
test = [12,21,64,8,7,43,20,3,9,31,71,42,45,234,678,1,2,5,3]

# 快速排序的逻辑为，每次排序，以第一个数为基准，先从后往前找小于基准的，找到后，再从前往后找到大于这个数的，将两个数交换位置
# 当前后碰头的时候，则交换碰头地方的数和基准数，这样基准的前面则是小于基准的所有数，基准后面的是大于基准所有的数
# 再将基准前面的数和后面的数做一次以上操作
# 声明排序用的函数
sort = (left, right) ->
	# 设置第一个数为基准
	if left >= right
		return
	benchmark = test[left]
	i = left
	j = right
	while i != j
		while test[j] >= benchmark and j > i
			j--
		while test[i] <= benchmark and i < j
			i++
		# 两个while过后，得出的i和j就是需要交换的地方
		if i < j
			temp = test[i]
			test[i] = test[j]
			test[j] = temp
	# 这里是基准交换到了中间
	temp = test[left]
	test[left] = test[i]
	test[i] = temp

	# 换一个基准继续交换
	sort(left, i-1)
	sort(i+1, right)

sort(0, test.length - 1)
console.log test