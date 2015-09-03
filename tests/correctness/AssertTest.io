doRelativeFile("../../io/Assert.io")

Dog := Object clone
fido := Dog clone
fido breed := "poodle"
fifi := Dog clone
fifi breed := "poodle"
snoopy := Dog clone
snoopy breed := "beagle"
ralf := Dog clone
ralf age := 2
ralf breed := "poodle"

Cat := Object clone
lizzy := Cat clone

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

// Test isNull
n1 := try(Assert isNull(nil); "Success Test isNull 1!" println)
n1 catch(Exception, "Failed test isNull 1!" println)

n2 := try(Assert isNull(fido); "Failed Test isNull 2!" println)
n2 catch(Exception, "Success test isNull 2!" println)

// Test isNotNull
nn1 := try(Assert isNotNull(nil); "Failed Test isNotNull 1!" println)
nn1 catch(Exception, "Success test isNotNull 1!" println)

nn2 := try(Assert isNotNull(fido); "Success Test isNotNull 2!" println)
nn2 catch(Exception, "Failed test isNotNull 2!" println)

// Test areEqual
e1 := try(Assert areEqual(fido, fifi); "Success Test areEqual 1!" println)
e1 catch(Exception, "Failed Test areEqual 1!" println)

e2 := try(Assert areEqual(fido, lizzy); "Failed Test areEqual 2!" println)
e2 catch(Exception, "Success Test areEqual 2!" println)

e3 := try(Assert areEqual(nil, nil); "Success Test areEqual 3!" println)
e3 catch(Exception, "Failed Test areEqual 3!" println)

e4 := try(Assert areEqual(nil, fido); "Failed Test areEqual 4!" println)
e4 catch(Exception, "Success Test areEqual 4!" println) 

e5 := try(Assert areEqual(fido, nil); "Failed Test areEqual 5!" println)
e5 catch(Exception, "Success Test areEqual 5!" println) 

e6 := try(Assert areEqual(fido, snoopy); "Failed Test areEqual 6!" println)
e6 catch(Exception, "Success Test areEqual 6!" println) 

e7 := try(Assert areEqual(fido, ralf); "Failed Test areEqual 7!" println)
e7 catch(Exception, "Success Test areEqual 7!" println) 

// Test areNotEqual
ne1 := try(Assert areNotEqual(fido, fifi); "Failed Test areNotEqual 1!" println)
ne1 catch(Exception, "Success Test areNotEqual 1!" println)

ne2 := try(Assert areNotEqual(fido, lizzy); "Success Test areNotEqual 2!" println)
ne2 catch(Exception,  "Failed Test areNotEqual 2!" println)

ne3 := try(Assert areNotEqual(nil, nil); "Failed Test areNotEqual 3!" println)
ne3 catch(Exception, "Success Test areNotEqual 3!" println)

ne4 := try(Assert areNotEqual(nil, fido); "Success Test areNotEqual 4!" println)
ne4 catch(Exception, "Failed Test areNotEqual 4!" println) 

ne5 := try(Assert areNotEqual(fido, nil); "Success Test areNotEqual 5!" println)
ne5 catch(Exception, "Failed Test areNotEqual 5!" println) 

ne6 := try(Assert areNotEqual(fido, snoopy); "Success Test areNotEqual 6!" println)
ne6 catch(Exception, "Failed Test areNotEqual 6!" println) 

ne7 := try(Assert areNotEqual(fido, ralf); "Success Test areNotEqual 7!" println)
ne7 catch(Exception, "Failed Test areNotEqual 7!" println) 

