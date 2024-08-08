class Ppl::Command::Completion < Ppl::Application::Command

  name        "completion"
  description "Output shell completion function"

  attr_writer :completions_directory

  def options(parser, options)
    parser.banner = "usage: ppl completion <shell>"
  end

  def execute(input, output)
    shell_name = require_shell_name(input)
    location = require_completion_existence(shell_name)
    output.line(File.read(location))
  end

  private

  def require_shell_name(input)
    if input.arguments.first.nil?
      raise Ppl::Error::IncorrectUsage, "No shell specified"
    end
    input.arguments.shift
  end

  def require_completion_existence(shell_name)
    path = File.join(@completions_directory.path, shell_name)
    if !File.exist? path
      raise Ppl::Error::CompletionNotFound, shell_name
    end
    path
  end

end

