class Ppl::Adapter::Storage::Factory

  def initialize(vcard_adapter)
    @vcard_adapter = vcard_adapter
  end

  def load_adapter(directory)
    git_dir = File.join(directory.path, ".git")

    disk_adapter = Ppl::Adapter::Storage::Disk.new(directory)
    disk_adapter.vcard_adapter = @vcard_adapter

    adapter = disk_adapter

    if File.exist?(git_dir)
      git_adapter = Ppl::Adapter::Storage::Git.new(disk_adapter)
      git_adapter.vcard_adapter = @vcard_adapter
      adapter = git_adapter
    end

    return adapter
  end

end

