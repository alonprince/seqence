# 需要排序的是0到1000的10个数,进行从大到小的排序
test = [283,193,485,202,995,483,291,592,746,281,120,230]

# 算法开始
# 先新建一个长度为1001的数组
arr = new Array(1001)
# 数组初始化
i = 0
while i < arr.length
	arr[i] = 0
	i++ 
# 循环被测试数组,以出现的数字为下标，+1
arr[i]++ for i in test
# 倒着循环打印出数据
i = arr.length - 1 
while i >= 0
	if arr[i] isnt 0
		j = 0
		while j < arr[i]
			console.log i
			j++
	i--
