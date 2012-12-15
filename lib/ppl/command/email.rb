
class Ppl::Command::Email < Ppl::Application::Command

  attr_writer :show_format
  attr_writer :list_format

  def initialize
    @name        = "email"
    @description = "Show or change a contact's email address"
    @show_format = Ppl::Format::Contact::EmailAddress.new
    @list_format = Ppl::Format::AddressBook::EmailAddresses.new
  end

  def options(parser, options)
    parser.banner = "usage: ppl email <contact> [<email-address>]"
  end

  def execute(input, output)
    action = determine_action(input)
    send(action, input, output)
  end


  private

  def determine_action(input)
    if input.arguments[0].nil?
      :list_email_addresses
    elsif input.arguments[1].nil?
      :show_email_address
    else
      :set_email_address
    end
  end

  def list_email_addresses(input, output)
    address_book = @storage.load_address_book
    email_list   = @list_format.process(address_book)
    output.line(email_list)
  end

  def show_email_address(input, output)
    contact       = @storage.require_contact(input.arguments[0])
    email_address = @show_format.process(contact)
    output.line(email_address)
  end

  def set_email_address(input, output)
    contact = @storage.require_contact(input.arguments[0])
    contact.email_address = input.arguments[1].dup
    @storage.save_contact(contact)
  end

end

