# encoding: utf-8

describe Ppl::Adapter::EmailScraper::Mail do

  before(:each) do
    @adapter = Ppl::Adapter::EmailScraper::Mail.new
    @storage = double(Ppl::Adapter::Storage)
    @adapter.storage_adapter = @storage
  end

  describe "#scrape_contacts" do

    it "should return an array" do
      expect(@adapter.scrape_contacts("")).to eq []
    end

    it "should scrape the sender's name" do
      email = [
        "Date: Fri, 30 Nov 2012 17:09:33 +0000",
        "From: Test User <test@example.org>",
        "Message-ID: <qwertyuioasdfghjk@mail.example.org>",
        "Subject: Test Email",
        "To: henry@catalinismith.com",
        "",
        "Hey,",
        "This is a test email.",
        "Bye!",
      ].join("\n")
      expect(@storage).to receive(:load_contact).and_return(nil)
      contacts = @adapter.scrape_contacts(email)
      expect(contacts.first.name.full).to eq "Test User"
    end

    it "should scrape the sender's email address" do
      email = [
        "Date: Fri, 30 Nov 2012 17:09:33 +0000",
        "From: Test User <test@example.org>",
        "Message-ID: <qwertyuioasdfghjk@mail.example.org>",
        "Subject: Test Email",
        "To: henry@catalinismith.com",
        "",
        "Hey,",
        "This is a test email.",
        "Bye!",
      ].join("\n")
      expect(@storage).to receive(:load_contact).and_return(nil)
      contacts = @adapter.scrape_contacts(email)
      expect(contacts.first.email_addresses.first.address).to eq "test@example.org"
    end

    it "should generate an ID for the sender based on their name" do
      email = [
        "Date: Fri, 30 Nov 2012 17:09:33 +0000",
        "From: Test User <test@example.org>",
        "Message-ID: <qwertyuioasdfghjk@mail.example.org>",
        "Subject: Test Email",
        "To: henry@catalinismith.com",
        "",
        "Hey,",
        "This is a test email.",
        "Bye!",
      ].join("\n")
      expect(@storage).to receive(:load_contact).and_return(nil)
      contacts = @adapter.scrape_contacts(email)
      expect(contacts.first.id).to eq "test_user"
    end

    it "should generate a sender ID based on email address if there's no name" do
      email = [
        "Date: Fri, 30 Nov 2012 17:09:33 +0000",
        "From: test@example.org",
        "Message-ID: <qwertyuioasdfghjk@mail.example.org>",
        "Subject: Test Email",
        "To: henry@catalinismith.com",
        "",
        "Hey,",
        "This is a test email.",
        "Bye!",
      ].join("\n")
      contacts = @adapter.scrape_contacts(email)
      expect(contacts.first.id).to eq "test@example.org"
    end

    it "avoids overwriting an existing contact ID" do
      email = [
        "Date: Fri, 30 Nov 2012 17:09:33 +0000",
        "From: Test User <test@example.org>",
        "Message-ID: <qwertyuioasdfghjk@mail.example.org>",
        "Subject: Test Email",
        "To: henry@catalinismith.com",
        "",
        "Hey,",
        "This is a test email.",
        "Bye!",
      ].join("\n")
      expect(@storage).to receive(:load_contact).with("test_user").and_return(Ppl::Entity::Contact.new)
      expect(@storage).to receive(:load_contact).with("test_user_1").and_return(nil)
      contacts = @adapter.scrape_contacts(email)
      expect(contacts.first.id).to eq "test_user_1"
    end

    it "allows non-ASCII sender names" do
      email = [
        "Date: Fri, 30 Nov 2012 17:09:33 +0000",
        "From: =?UTF-8?B?0JDQu9C10LrRgdCw0L3QtNGA?= <test@example.org>",
        "Message-ID: <qwertyuioasdfghjk@mail.example.org>",
        "Subject: Test Email",
        "To: henry@catalinismith.com",
        "",
        "Hey,",
        "This is a test email.",
        "Bye!",
      ].join("\n")

      expect(@storage).to receive(:load_contact).and_return(nil)
      contacts = @adapter.scrape_contacts(email)

      expect(contacts.first.name.full).to eq "Александр"
    end

  end

end

