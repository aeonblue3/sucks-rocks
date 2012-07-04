Feature: Users can learn how good something is

	@user-compares-two-terms
	Scenario: User compares two terms
		When I search for comcast
		And I search for the beatles
		Then the beatles should have a higher score than comcast

