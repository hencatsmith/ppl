
def ppl(command)
  project_root = File.dirname(File.dirname(File.dirname(__FILE__)))
  ppl_location = File.join(project_root, "bin", "ppl")
  real_command = "#{ppl_location} #{command}"
  `#{real_command}`.strip
end

When /^I run "ppl ([^"]+)"$/ do |command|
  ppl command
end

Then /^it should succeed$/ do
  $?.exitstatus.should eq 0
end

Then /^it should fail$/ do
  $?.exitstatus.should_not eq 0
end

Then /^there should be 1 contact$/ do
  contact_list = ppl("ls").strip.split("\n")
  contact_list.length.should eq 1
  @contact_id = contact_list[0].split(":").first
end

Then /^(bob) should have (\d+) email addresse?s?$/ do |name, number|
  @email_addresses = ppl("email #{name}").split("\n")
  @email_addresses.length.should eq number.to_i
end

Then /^(bob) should have (\d+) organizations?$/ do |name, number|
  @organizations = ppl("org #{name}").split("\n")
  @organizations.length.should eq number.to_i
end

Then /^(bob) should have (\d+) phone numbers?$/ do |name, number|
  @phone_numbers = ppl("phone #{name}").split("\n")
  @phone_numbers.length.should eq number.to_i
end

And /^its ID should be "([^"]+)"$/ do |id|
  @contact_id.should eq id
end

And /^its name should be "([^"]+)"$/ do |name|
  ppl("name #{@contact_id}").should eq name
end

Then(/^the (\d+).. email address should be "([^"]+)"$/) do |nth, address|
  @email_addresses[nth.to_i - 1].should eq address
end

Then /^running "ppl ([^"]+)" should output (\d+) lines?$/ do |command, lines|
  @output = ppl(command).split("\n")
  @output.length.should eq lines.to_i
end

And /^the (\d+).. line should be "([^"]+)"$/ do |nth, line|
  @output[nth.to_i - 1].should eq line
end

Then(/^the (\d+).. organization should be "([^"]+)"$/) do |nth, organization|
  @organizations[nth.to_i - 1].should eq organization
end

Then(/^the (\d+).. phone number should be "([^"]+)"$/) do |nth, phone_number|
  @phone_numbers[nth.to_i - 1].should eq phone_number
end

Then /^(bob)'s birthday should be "([^"]+)"$/ do |id, birthday|
  ppl("bday #{id}").should eq birthday
end

And /^(bob)'s name is "([^"]+)"$/ do |id, name|
  ppl("name #{id} \"#{name}\"")
end

And /^(bob)'s email address is "([^"]+)"$/ do |id, email_address|
  ppl("email #{id} \"#{email_address}\"")
end

