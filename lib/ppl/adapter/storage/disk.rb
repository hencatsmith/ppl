require "fileutils"

class Ppl::Adapter::Storage::Disk < Ppl::Adapter::Storage

  attr_accessor :directory
  attr_accessor :vcard_adapter

  def self.create_address_book(path)
    if !Dir.exist? path
      FileUtils.mkdir_p(path)
    end
    storage = self.new(Dir.new(path))

    dot_ppl = File.join(path, ".ppl")
    config  = File.join(dot_ppl, "config")
    FileUtils.mkdir_p(dot_ppl)
    FileUtils.touch(config)

    storage
  end

  def initialize(directory)
    @directory = directory
  end

  def load_address_book
    address_book = Ppl::Entity::AddressBook.new

    pattern   = File.join @directory.path, "*.vcf"
    filenames = Dir.glob pattern

    filenames.each do |filename|
      contact_id = File.basename(filename).slice(0..-5)
      contact    = load_contact(contact_id)
      address_book.contacts.push(contact)
    end

    return address_book
  end

  def load_contact(id)
    filename = filename_for_contact_id(id)
    contact  = nil
    if File.exist?(filename)
      vcard   = File.read filename
      contact = @vcard_adapter.decode(vcard)
      if !contact.nil? && contact.is_a?(Ppl::Entity::Contact)
        contact.id = id
      end
    end
    return contact
  end

  def save_contact(contact)
    vcard = @vcard_adapter.encode(contact)

    filename = filename_for_contact(contact)
    File.open(filename, "w") do |file|
      file.write(vcard)
    end
  end

  def delete_contact(contact)
    File.unlink filename_for_contact(contact)
  end

  def filename_for_contact(contact)
    filename_for_contact_id(contact.id)
  end

  def filename_for_contact_id(id)
    File.join(@directory.path, id + ".vcf")
  end

  def path
    @directory.path
  end

end

