import os

def main():
	q = "import os{:c}{:c}def main():{:c}{:c}q = {:c}{:s}{:c}{:c}{:c}i = {:d}{:c}{:c}if i > 0:{:c}{:c}{:c}i -= 1{:c}{:c}{:c}f = open('Sully_' + str(i) + '.py', 'w'){:c}{:c}{:c}print(q.format(10, 10, 10, 9, 34, q, 34, 10, 9, i, 10, 9, 10, 9, 9, 10, 9, 9, 10, 9, 9, 10, 9, 9, 10, 9, 9, 10, 10, 10, 9, 10), file = f){:c}{:c}{:c}f.close(){:c}{:c}{:c}os.system('python3 ./Sully_'+ str(i) + '.py'){:c}{:c}if __name__ == '__main__' :{:c}{:c}main()"
	i = 6
	if i > 0:
		i -= 1
		f = open('Sully_' + str(i) + '.py', 'w')
		print(q.format(10, 10, 10, 9, 34, q, 34, 10, 9, i, 10, 9, 10, 9, 9, 10, 9, 9, 10, 9, 9, 10, 9, 9, 10, 9, 9, 10, 10, 10, 9, 10), file = f)
		f.close()
		os.system('python3 ./Sully_'+ str(i) + '.py')

if __name__ == '__main__' :
	main()
