require 'spec_helper'

describe PersonalInfoForm do

	before(:all) do
		@info_form = PersonalInfoForm.new
		@info_form.go_to_homepage
	end

	it 'should open the automation practice form' do
		expect(@info_form.get_url).to eq ('http://toolsqa.com/automation-practice-form/')
	end

	it 'partial link test link should open automation pratice form' do
		@info_form.click_link('http://toolsqa.wpengine.com/automation-practice-form/')
		expect(@info_form.get_url).to eq ('http://toolsqa.com/automation-practice-form/')
	end

	it 'link test should open automation practice table' do
		@info_form.click_link('http://toolsqa.wpengine.com/automation-practice-table/')

		expect(@info_form.get_url).to eq ('http://toolsqa.com/automation-practice-table/')
		expect(@info_form.check_page_text('Automation Practice Table')).to be true
		@info_form.go_to_homepage
	
	end

	it 'should accept a value in the first name field' do
		
		@info_form.input_fields_name('firstname').send_keys('firstname')
		expect(@info_form.input_fields_name('firstname').value).to eq 'firstname'
	end

	it 'should accept a value in the last name field' do
		@info_form.input_fields_name('lastname').send_keys('lastname')
		expect(@info_form.input_fields_name('lastname').value).to eq 'lastname'
	end

	it 'should select a radio button under Sex' do
		@info_form.select_radio_button('sex-1').set
		# expect(@info_form.get_id('sex-1').set?).to eq true
		# expect(@info_form.select_radio_button('sex-1').set?).to eq true
	end

	it 'should select a radio button after Years of experience' do
		@info_form.select_radio_button('exp-0').set
	end

	it 'should input a value for date' do
		@info_form.input_fields_id('datepicker').send_keys('date')
		expect(@info_form.input_fields_id('datepicker').value).to eq 'date'
	end

	it 'should select a checkbox option underneath profession' do
		@info_form.select_checkbox('profession-1').set
		

	end

	it 'should accept an image file for profile picture ' do
		# @info_form.click_button('photo').value=(file path)
	end

	it 'should click and wait until the Selenium Automation Hybrid Framework has downloaded' do
		@info_form.click_link('http://toolsqa.wpengine.com/wp-content/uploads/2014/04/OnlineStore.zip')

	end

	it 'should click and wait until the Test File to Download has downloaded' do
		@info_form.click_link('http://20tvni1sjxyh352kld2lslvc.wpengine.netdna-cdn.com/wp-content/uploads/2016/09/Test-File-to-Download.xlsx')
	end

	it 'should allow a text box to be selected in the Automation Tool options' do
		@info_form.select_checkbox('tool-2').set
	end

	it 'should select an option in the Continent drop down menu' do
		@info_form.select_checklist('continents').select "Antartica"
		expect(@info_form.select_checklist('continents').value).to eq "Antartica"
		
	end

	it 'should allow an option to to be selected in the Selenium Commands drop down' do
		@info_form.select_checklist('selenium_commands').select "Browser Commands"
	end

	it 'should check that button reloads the current page' do
		@info_form.click_button('submit')
		expect(@info_form.get_url).to include('http://toolsqa.com/automation-practice-form/')
	end
end