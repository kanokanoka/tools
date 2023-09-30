import unittest
# 何かで、fizzbuzz書いたら次は〇〇とかで、
# 「例えばユニットテスト入れるとしたら？みたいな話があった

for i in range(1,20):
  if i%15 == 0:
    print("FizzBuzz")
  elif i%3 == 0:
    print("Fizz")
  elif i%5 == 0:
    print("Buzz")
  else:
    print(i)