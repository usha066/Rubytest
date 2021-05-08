Feature: My Ruby Duck test
	Scenario: Search Duck in Google.
		Given I search googl with "duck".
		When I click the search.
		Then Search result should show duck.