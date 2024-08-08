describe Ppl::Adapter::Storage::Disk, "#create_address_book" do

  before(:each) do
    FakeFS.activate!
  end

  after(:each) do
    FakeFS.deactivate!
  end

  describe "#create_address_book" do
    it "should create the directory if it doesn't exist yet" do
      Ppl::Adapter::Storage::Disk.create_address_book("/contacts")
      expect(Dir.exist?("/contacts")).to eq true
      FileUtils.rm_rf("/contacts")
    end
    it "should return a Ppl::Adapter::Storage::Disk" do
      disk = Ppl::Adapter::Storage::Disk.create_address_book("/contacts")
      FileUtils.rm_rf("/contacts")
      expect(disk).to be_a(Ppl::Adapter::Storage::Disk)
    end
  end

end

describe Ppl::Adapter::Storage::Disk, "#initialize" do

  it "should accept a Dir object" do
    directory = Dir.new("/tmp")
    @storage = Ppl::Adapter::Storage::Disk.new(directory)
    expect(@storage.directory).to be directory
  end

end

describe Ppl::Adapter::Storage::Disk do

  before(:each) do
    @storage = Ppl::Adapter::Storage::Disk.new(nil)
  end

  describe "#vcard_adapter=" do
    it "should accept a vcard adapter" do
      adapter = double(Ppl::Adapter::Vcard)
      @storage.vcard_adapter = adapter
      expect(@storage.vcard_adapter).to be adapter
    end
  end

end

describe Ppl::Adapter::Storage::Disk do

  before(:each) do
    FakeFS.activate!

    Dir.mkdir "/contacts"
    directory = Dir.new("/contacts")

    @storage = Ppl::Adapter::Storage::Disk.new(directory)
    @adapter = double(Ppl::Adapter::Vcard)
    @contact = Ppl::Entity::Contact.new
    @storage.vcard_adapter = @adapter
  end

  after(:each) do
    FileUtils.rm_rf "/contacts"
    FakeFS.deactivate!
  end

  describe "#path" do
    it "should return the path of the directory" do
      expect(@storage.path).to eq "/contacts"
    end
  end

  describe "#load_address_book" do

    it "should return a Ppl::Entity::AddressBook" do
      expect(@storage.load_address_book).to be_a(Ppl::Entity::AddressBook)
    end

    it "should fill the address book with the contacts in the directory" do
      FileUtils.touch "/contacts/one.vcf"
      FileUtils.touch "/contacts/two.vcf"

      expect(@adapter).to receive(:decode).twice

      address_book = @storage.load_address_book
      expect(address_book.contacts.count).to eq 2
    end

  end

  describe "#load_contact" do

    it "should return nil if the given contact doesn't exist" do
      expect(@storage.load_contact("xyz")).to be nil
    end

    it "should return a Ppl::Entity::Contact" do
      FileUtils.touch "/contacts/one.vcf"
      expect(@adapter).to receive(:decode).once.and_return(@contact)
      expect(@storage.load_contact("one")).to be_a(Ppl::Entity::Contact)
    end

    it "should populate the contact's id" do
      FileUtils.touch "/contacts/one.vcf"
      expect(@adapter).to receive(:decode).once.and_return(@contact)
      expect(@storage.load_contact("one").id).to eq "one"
    end

  end

  describe "#save_contact" do

    it "should write the contact to disk" do
      expect(@adapter).to receive(:encode).with(@contact).and_return("asdfg")

      @contact.id = "test"
      @storage.save_contact(@contact)

      expect(File.read("/contacts/test.vcf")).to eq "asdfg"
    end

  end

  describe "#delete_contact" do
    it "should remove the the contact from the disk" do
      FileUtils.touch "/contacts/test.vcf"
      @contact.id = "test"
      @storage.delete_contact(@contact)
      expect(File.exist?("/contacts/test.vcf")).to eq false
    end
  end

  describe "#filename_for_contact" do
    it "should base the filename on the contact's id" do
      @contact.id = "test"
      expect(@storage.filename_for_contact(@contact)).to eq "/contacts/test.vcf"
    end
  end

  describe "#filename_for_contact_id" do
    it "should base the filename on the directory path" do
      expect(@storage.filename_for_contact_id("test")).to eq "/contacts/test.vcf"
    end
  end

end

