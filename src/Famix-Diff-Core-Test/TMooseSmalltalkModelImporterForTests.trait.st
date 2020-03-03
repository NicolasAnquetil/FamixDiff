Trait {
	#name : #TMooseSmalltalkModelImporterForTests,
	#category : 'Famix-Diff-Core-Test'
}

{ #category : #running }
TMooseSmalltalkModelImporterForTests >> importModelNamed: name fromPackages: packages [
	| importer tempModel |
	importer := MoosePharoImporterTask new.
	importer importingContext mergeClassAndMetaclass.
	importer candidateClass: CandidateListOperator.
	importer importerClass: SmalltalkImporter.
	importer
		model: MooseModel new;
		addFromPackagesNamed: packages;
		run.
	tempModel := importer model.
	tempModel name: name.
	^ tempModel
]