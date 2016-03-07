# require "rails_helper"

# RSpec.feature "Users can view projects" do 
#   scenario "with project details" do
#     project = FactoryGirl.create(:project, name: "Sublime Text 3")

#     visit "/"
#     click_link "Sublime Text 3"
#     expect(page.current_url).to eq project_url(project)
#   end
# end

require 'spec_helper'

feature "Viewing projects" do
  scenario "Listing all projects" do
    project = FactoryGirl.create(:project, name: "TextMate 2")
    visit '/'
    click_link 'TextMate 2'
    expect(page.current_url).to eql(project_url(project))
  end
end