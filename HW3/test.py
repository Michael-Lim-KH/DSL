import unittest

class fMax:

	def __init__(self,l):
		self._1 =1

	def findMax(self):
		maximum = self._l[0]
		for i in range(0,len(self._l)-1):
			if maximum <self._l[i]:
				maximum = self._l[i]
		return maximum

class exampleTest(unittest.TestCase):
	def test_normal_list(self):
		List = [1,2,3,4,5]
		Max = fMax(List)
		self.assertEqual(5,Max.findMax())
		
	def test_string_list(self):
		List = [1,2,3,four,5]
		Max = fMax(List)
		self.assertEqual(5,Max.findMax())
		
	def test_null_list(self):
		List = null
		Max = fMax(List)
		self.assertEqual(5,Max.findMax())
	  
  if __name__=='__main__':
    unittest.main()