def cc():
	return None
#lol
str = "def cc():%c%creturn None%c#lol%cstr = %c%s%c"
str2 = "str2 = %c%s%c%cprint (str %c (10, 9, 10, 10, 34, str, 34))%cprint (str2 %c (34, str2, 34, 10, 37, 10, 37))"
print (str % (10, 9, 10, 10, 34, str, 34))
print (str2 % (34, str2, 34, 10, 37, 10, 37))
