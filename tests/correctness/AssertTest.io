doRelativeFile("../../Assert.io")

// Test isTrue
t1 := try(Assert isTrue(true); "Success Test isTrue 1!" println)
t1 catch(Exception, "Failed Test isTrue 1!" println)

t2 := try(Assert isTrue(false); "Failed test isTrue 2!" println)
t2 catch(Exception, "Success Test isTrue 2!" println)

t3 := try(Assert isTrue(nil); "Failed test isTrue 3!" println)
t3 catch(Exception, "Success Test isTrue 3!" println)

// Test isFalse
f1 := try(Assert isFalse(false); "Success Test isFalse 1!" println)
f1 catch(Exception, "Failed Test isFalse 1!" println)

f2 := try(Assert isFalse(true); "Failed test isFalse 2!" println)
f2 catch(Exception, "Success Test isFalse 2!" println)

f3 := try(Assert isFalse(nil); "Failed test isFalse 3!" println)
f3 catch(Exception, "Success Test isFalse 3!" println)

Dog := Object clone
fido := Dog clone
fifi := Dog clone

Cat := Object clone
lizzy := Cat clone

e1 := try(Assert areEqual(fido, fifi); "Success Test 1!" println)
e1 catch(Exception, "Failed Test 1!" println)

e2 := try(Assert areEqual(fido, lizzy); "Failed Test 2!" println)
e2 catch(Exception, "Success Test 2!" println)



