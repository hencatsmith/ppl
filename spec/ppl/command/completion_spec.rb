describe Ppl::Command::Completion do

  before(:each) do
    @command = Ppl::Command::Completion.new
    @input   = Ppl::Application::Input.new
    @output  = double(Ppl::Application::Output)
    @directory = double(Dir)
    @command.completions_directory = @directory
  end

  describe "#name" do
    it "should be 'completion'" do
      expect(@command.name).to eq "completion"
    end
  end

  describe "#execute" do

    before(:each) do
      allow(@directory).to receive(:path).and_return("")
      allow(File).to receive(:exist?).and_return(true)
      allow(File).to receive(:read)
    end

    it "should raise an error if no shell is specified" do
      @input.arguments = []
      expect{@command.execute(@input, @output)}.to raise_error(Ppl::Error::IncorrectUsage)
    end

    it "should raise an error if the shell is not recognised" do
      @input.arguments = ["invalidshell"]
      expect(File).to receive(:exist?).with("/invalidshell").and_return(false)
      expect{@command.execute(@input, @output)}.to raise_error(Ppl::Error::CompletionNotFound)
    end

    it "should read the function from disk and print it to stdout" do
      @input.arguments = ["zsh"]
      expect(File).to receive(:read).and_return("completion function")
      expect(@output).to receive(:line).with("completion function")
      @command.execute(@input, @output)
    end

  end

end

