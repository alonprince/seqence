var test = [283,193,485,202,995,483,291,592,746,281,120,230];
var arr = new Array(1001);
for(var i = 0; i < arr.length; i++) {
	arr[i] = 0;
}
for(var i = 0; i < test.length; i++) {
	var index = test[i];
	arr[index]++
}
for(var i = arr.length - 1; i >= 0; i--) {
	if(arr[i] !== 0) {
		for(var j = 0; j < arr[i]; j++){
			console.log(i);
		}
	}
}