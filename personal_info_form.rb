require 'watir'

class PersonalInfoForm

	def initialize
		@browser = Watir::Browser.new :chrome
	end

	def go_to_homepage
		@browser.goto 'http://toolsqa.com/automation-practice-form/'
	end

	def click_link(url)
		link = @browser.link(href: url)
		# link = @browser.link(text: link_text)
		link.exists?
		link.click
	end

	def get_url
		@browser.url
	end

	def get_id(id_name)
		@browser.element(id: id_name)
	end

	def input_fields_name(name)
		@browser.text_field(name: name)
	end

	def input_fields_id(id)
		@browser.text_field(id: id)
	end

	def select_radio_button(id)
		@browser.radio(:id, id)
	end

	def select_checkbox(id)
		@browser.checkbox(:id, id)
	end

	def select_checklist(id)
		@browser.select_list(:id, id)
	end

	def click_button(button_id)
		@browser.button(id: button_id).click
	end

	def check_page_text(text)
		@browser.text.include? text
	# 	@browser.h1(:text => /Automation Practice Table/)
	end
end

# form = PersonalInfoForm.new
# form.get_url

# puts @browser.h1.text
# form.click_link('http://toolsqa.wpengine.com/automation-practice-table/')