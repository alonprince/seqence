# 这个算法是来判断回文字符串的，即'aba','asdffdsa','哦哈哦'
# 预设几个字符串
test = ['asdfgfdsa', 'aaaaaaaaahaaaaaaa','popopopopopopopopopopop','nvnvnvnvnskdfkl']
stack = []
# 声明一个判断回文字符串的函数
isHuiwen = (str) ->
	len = str.length
	# 取中间值
	mid = parseInt(len / 2 ) - 1
	top = 0
	for i in [0...mid + 1]
		stack[++top] = str[i]

	if len % 2 is 0
		next = mid + 1
	else 
		next = mid + 2
	for i in [next...len]
		if stack[top] isnt str[i]
			break
		top--

	if top == 0
		console.log "#{str}是一个回文"
	else 
		console.log "#{str}不是一个回文"


for i in test
	isHuiwen i