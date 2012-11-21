
class Ppl::Application::Bootstrap

  def commands
    commands = [
      Ppl::Command::CommandList.new,
      Ppl::Command::ContactDelete.new,
      Ppl::Command::ContactList.new,
      Ppl::Command::ContactRename.new,
      Ppl::Command::ContactShow.new,
    ]
    return commands
  end

  def command_suite
    suite = Ppl::Application::CommandSuite.new
    commands.each do |command|
      suite.add_command(command)
    end
    return suite
  end

  def input
    input = Ppl::Application::Input.new(ARGV.dup)
    return input
  end

  def output
    output = Ppl::Application::Output.new($stdout, $stderr)
    return output
  end

  def router
    router = Ppl::Application::Router.new(command_suite)
    router.default = "help"
    return router
  end

  def shell
    shell = Ppl::Application::Shell.new
    shell.router = router
    return shell
  end

end
