Feature:
Scenario:

Given a board like this:
|	| 1	| 2	| 3	|
| 1	|	|	|	|
| 2	|	|	|	|
| 3	|	|	|	|

When player x plays in column 2, row 1
Then the board should look like this:

|	| 1	| 2	| 3	|
| 1	|	|	|	|
| 2	| x	|	|	|
| 3	|	|	|	|