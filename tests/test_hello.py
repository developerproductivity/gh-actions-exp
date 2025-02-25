import hello

def test_say_hello():
  assert hello.say_hello() == "Hello"

def test_new_hello():
  assert hello.new_hello() == "New Hello"
