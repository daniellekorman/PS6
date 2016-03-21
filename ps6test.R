# Test of electPack package using Ted Cruz as example
# Create an object of class Candidate called Cruz
Cruz <- createCandidate("Ted Cruz", 423, "Republican")
class(Cruz)
# Test show and print methods
show(Cruz)
print(Cruz)
# Test propNeeded method
propNeeded(Cruz, 1049)
