accessing
connectionArguments

	^ connectionArguments ifNil: [ connectionArguments := PGConnectionArgs
									hostname: 'localhost'
									portno: 5432
									databaseName: 'postgres'
									userName: 'postgres'
									password: 'bird'.]