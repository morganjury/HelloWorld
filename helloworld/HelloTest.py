from helloworld import Hello
import unittest


class TestClass(unittest.TestCase):

    def test_pass(self):
        self.assertIsNotNone(Hello.hello())
        self.assertEqual(Hello.hello(), 'Hello, World!')

    def test_fail(self):
        self.assertIsNotNone(Hello.hello())
        self.assertNotEqual(Hello.hello(), '')


if __name__ == '__main__':
    unittest.main()
