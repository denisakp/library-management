import unittest

from src.services.calculator import add, multiply, subtraction


class MyTestCase(unittest.TestCase):
    def test_add(self):
        self.assertEqual(add(5, 5), 10)

    def test_multiply(self):
        self.assertEqual(multiply(2, 2), 4)

    def test_subtraction(self):
        self.assertEqual(subtraction(4, 4), 0)


if __name__ == "__main__":
    unittest.main()
