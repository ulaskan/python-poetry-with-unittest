import unittest
from src.name import formatted_name

class NamesTestCase(unittest.TestCase):

   def test_formatted_name(self):
       result = formatted_name("pete", "seeger")
       self.assertEqual(result, "Pete Seeger")
