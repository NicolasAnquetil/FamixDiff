Class {
	#name : #BaselineOfFamixDiff,
	#superclass : #BaselineOf,
	#category : #BaselineOfFamixDiff
}

{ #category : #baselines }
BaselineOfFamixDiff >> baseline: spec [
    <baseline>
    spec
        for: #common
        do: [ 
            self defineDependencies: spec.
            self definePackages: spec.
            self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfFamixDiff >> defineDependencies: spec [
	"No pre-established dependencies.
	Should be applicable to any Famix model"
]

{ #category : #baselines }
BaselineOfFamixDiff >> defineGroups: spec [
 		spec 
			group: 'core' with: #('Famix-Diff' );
			group: 'core-tests' with: #('core' 'Famix-Diff-Tests' 'Moose-TestResources-ModelDiff-P2' 'Moose-TestResources-ModelDiff-P3' 'Moose-TestResources-ModelDiff-P4') ;
			group: 'utilities' with: #('core' 'Famix-Diff-Utilities' ) ;
			group: 'utilities-tests' with: #('core-tests' 'utilities' 'Famix-Diff-Utilities-Tests' ) ;
			group: 'browser' with: #('core' 'Famix-Diff-Browser' ) ;
			group: 'browser-tests' with: #('core-tests' 'browser' 'Famix-Diff-Browser-Tests' ).

]

{ #category : #baselines }
BaselineOfFamixDiff >> definePackages: spec [
		spec 
			package: #'Famix-Diff-ChangeModel';
			package: 'Famix-Diff-Core' with: [
				spec requires: #(#'Famix-Diff-ChangeModel' ). ];
			package: #'Famix-Diff-Core-Test' with: [
				spec requires: #('Famix-Diff-Core' ). ];
			package: 'Famix-Diff-Extensions';
			package: #'Famix-Diff-Extensions-Tests' with: [
				spec requires: #('Famix-Diff-Extensions' ). ];
			package: 'Moose-TestResources-ModelDiff-P2';
			package: 'Moose-TestResources-ModelDiff-P3';
			package: 'Moose-TestResources-ModelDiff-P4'.

"Ignored for now
			package: 'Famix-Diff-Browser' with: [
				spec requires: #('Famix-Diff-Core' ). ];
			package: #'Famix-Diff-Browser-Tests' with: [
				spec requires: #('Famix-Diff-Browser' ). ];"
]
