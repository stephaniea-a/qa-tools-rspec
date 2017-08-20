# qa-tools-rspec

## Objective

To test the 'http://toolsqa.com/automation-practice-form' website using Rspec testing.

## Technologies Used
Watir - An open source Ruby library for automating tests. it is used to drive and interact with a browser the same way a user would

## Setup/Implementation

A class was created called PersonalInfoForm which contains the methods and interaction that could be made on that page. The browser instance variable would be initilaised when this object was called.

    def initialize
        @browser = Watir::Browser.new :chrome
      end
      
## Test Setup

In the form spec where the test have been written a before hook has been used in order to instanciate the PersonalInfoFomr to be used in all tests

    before(:all) do
        @info_form = PersonalInfoForm.new
        @info_form.go_to_homepage
      end

Example of tests written

    it 'should open the automation practice form' do
      expect(@info_form.get_url).to eq ('http://toolsqa.com/automation-practice-form/')
    end
