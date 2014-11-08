# 该文件为第二章的第一个例子，解密qq号，规则为给定一串数字，下标从0开始，偶数项从数组里删除，奇数项一到数组最后，然后打印出所有被删除的数字
# 假设数组
test = [6,3,1,7,5,8,9,2,4]
head = 0
tail = test.length
# while head != tail
# 	# 判断下标
# 	if head % 2 == 0
# 		# 偶数项删除
# 		console.log test[head]
# 		head++
# 	else 
# 		# 奇数项移到末尾
# 		test[tail] = test[head]
# 		head++
# 		tail++

# 看书优化后发现能少循环一半，即每次循环处理两个数
while head < tail
	# 处理偶数
	console.log test[head]
	head++

	# 处理奇数
	test[tail] = test[head]
	head++
	tail++