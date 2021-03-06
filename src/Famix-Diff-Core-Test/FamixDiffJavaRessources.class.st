Class {
	#name : #FamixDiffJavaRessources,
	#superclass : #MooseModelTestResource,
	#category : 'Famix-Diff-Core-Test'
}

{ #category : #'as yet unclassified' }
FamixDiffJavaRessources >> importModel [

	model importFromMSEStream: self mse readStream
]

{ #category : #'as yet unclassified' }
FamixDiffJavaRessources >> mse [
 ^ '(
	(FAMIX.Class (id: 3)
		(name ''Object'')
		(container (ref: 4))
		(isStub true))
	(FAMIX.Inheritance (id: 5)
		(previous (ref: 6))
		(subclass (ref: 7))
		(superclass (ref: 8)))
	(FAMIX.Class (id: 9)
		(name ''<StubMethodContainer>'')
		(container (ref: 10))
		(isStub true))
	(FAMIX.Class (id: 11)
		(name ''FilterOutputStream'')
		(container (ref: 12))
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Inheritance (id: 13)
		(subclass (ref: 8))
		(superclass (ref: 14)))
	(FAMIX.Inheritance (id: 15)
		(previous (ref: 16))
		(subclass (ref: 17))
		(superclass (ref: 8)))
	(FAMIX.Inheritance (id: 22)
		(previous (ref: 23))
		(subclass (ref: 24))
		(superclass (ref: 25)))
	(FAMIX.Inheritance (id: 16)
		(previous (ref: 26))
		(subclass (ref: 17))
		(superclass (ref: 27)))
	(FAMIX.Attribute (id: 28)
		(name ''class'')
		(declaredType (ref: 29))
		(isStub true)
		(parentType (ref: 29)))
	(FAMIX.Class (id: 30)
		(name ''System'')
		(container (ref: 4))
		(isStub true)
		(modifiers ''final'' ''public''))
	(FAMIX.ParameterizedType (id: 31)
		(name ''Comparable'')
		(container (ref: 4))
		(isStub true)
		(parameterizableClass (ref: 32)))
	(FAMIX.Namespace (id: 12)
		(name ''io'')
		(isStub true)
		(numberOfAttributes 0)
		(parentScope (ref: 33)))
	(FAMIX.Class (id: 14)
		(name ''AutoCloseable'')
		(container (ref: 4))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Class (id: 34)
		(name ''Serializable'')
		(container (ref: 12))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Class (id: 8)
		(name ''Closeable'')
		(container (ref: 12))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Inheritance (id: 35)
		(subclass (ref: 9))
		(superclass (ref: 3)))
	(FAMIX.Class (id: 27)
		(name ''Appendable'')
		(container (ref: 4))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Class (id: 25)
		(name ''CharSequence'')
		(container (ref: 4))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Inheritance (id: 36)
		(previous (ref: 5))
		(subclass (ref: 7))
		(superclass (ref: 37)))
	(FAMIX.ParameterizableClass (id: 29)
		(name ''Class'')
		(container (ref: 4))
		(isStub true))
	(FAMIX.Inheritance (id: 38)
		(previous (ref: 39))
		(subclass (ref: 24))
		(superclass (ref: 34)))
	(FAMIX.Inheritance (id: 23)
		(previous (ref: 38))
		(subclass (ref: 24))
		(superclass (ref: 31)))
	(FAMIX.ParameterizableClass (id: 32)
		(name ''Comparable'')
		(container (ref: 4))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.JavaSourceLanguage (id: 40))
	(FAMIX.Class (id: 17)
		(name ''PrintStream'')
		(container (ref: 12))
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Class (id: 37)
		(name ''Flushable'')
		(container (ref: 12))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Namespace (id: 4)
		(name ''lang'')
		(isStub true)
		(numberOfAttributes 2)
		(parentScope (ref: 33)))
	(FAMIX.Inheritance (id: 41)
		(subclass (ref: 30))
		(superclass (ref: 3)))
	(FAMIX.Attribute (id: 42)
		(name ''out'')
		(declaredType (ref: 17))
		(hasClassScope true)
		(isStub true)
		(modifiers ''final'' ''public'')
		(parentType (ref: 30)))
	(FAMIX.Inheritance (id: 6)
		(subclass (ref: 7))
		(superclass (ref: 3)))
	(FAMIX.Method (id: 43)
		(name ''println'')
		(cyclomaticComplexity -1)
		(declaredType (ref: 44))
		(isStub true)
		(modifiers ''public'')
		(numberOfComments 0)
		(numberOfConditionals -1)
		(numberOfLinesOfCode 0)
		(numberOfParameters 0)
		(numberOfStatements -1)
		(parentType (ref: 17))
		(signature ''println(String)'')
		(timeStamp ''''))
	(FAMIX.Namespace (id: 10)
		(name ''<Default Package>'')
		(isStub true)
		(numberOfAttributes 0))
	(FAMIX.Inheritance (id: 39)
		(subclass (ref: 24))
		(superclass (ref: 3)))
	(FAMIX.Class (id: 24)
		(name ''String'')
		(container (ref: 4))
		(isStub true)
		(modifiers ''final'' ''public''))
	(FAMIX.PrimitiveType (id: 44)
		(name ''void'')
		(isStub true))
	(FAMIX.Method (id: 45)
		(name ''getLog'')
		(cyclomaticComplexity -1)
		(isStub true)
		(numberOfComments 0)
		(numberOfConditionals -1)
		(numberOfLinesOfCode 0)
		(numberOfParameters 0)
		(numberOfStatements -1)
		(parentType (ref: 9))
		(signature ''getLog(?)'')
		(timeStamp ''''))
	(FAMIX.Class (id: 7)
		(name ''OutputStream'')
		(container (ref: 12))
		(isStub true)
		(modifiers ''abstract'' ''public''))
	(FAMIX.Inheritance (id: 46)
		(subclass (ref: 11))
		(superclass (ref: 7)))
	(FAMIX.Namespace (id: 33)
		(name ''java'')
		(isStub true)
		(numberOfAttributes 0))
	(FAMIX.Inheritance (id: 26)
		(subclass (ref: 17))
		(superclass (ref: 11))))'
	
]
