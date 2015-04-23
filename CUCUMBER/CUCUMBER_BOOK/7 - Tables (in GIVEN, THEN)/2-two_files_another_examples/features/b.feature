Feature: Example
Scenario Outline: Withdraw fixed amount
Given Mam <KWOTA> na moim koncie
When postanowie wydac <DO_WYDANIA>
Then powinienem otrzymac <WYDANO>
And pozostala ilosc kasy wyniesie <POZOSTALO>

Examples:
|	KWOTA	|	DO_WYDANIA	| POZOSTALO	|	WYDANO				|
|	$500	|	$50 		| $450		|	pobrano $50 kasy	|
|	$500	|	$100 		| $400		|	pobrano $100 kasy	|
|	$500	|	$200 		| $300		|	pobrano $200 kasy	|