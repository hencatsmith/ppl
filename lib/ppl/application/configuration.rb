require "inifile"

class Ppl::Application::Configuration

  USER_CONFIG = "~/.pplconfig"
  REPO_CONFIG = "./.ppl/config"

  def address_book_path
    default_config = default_configuration
    user_config    = user_configuration

    path = default_config["address book"]["path"]
    if !user_config["address book"].nil? && !user_config["address book"]["path"].nil?
      path = File.expand_path(user_config["address book"]["path"])
    end

    return path
  end

  def aliases
    user_aliases = user_configuration["alias"]
    default_aliases = default_configuration["alias"]
    if user_aliases.nil?
      default_aliases
    else
      user_aliases
    end
  end

  def color_enabled(command_name)
    config = user_configuration
    if !config["color"].nil? && config["color"][command_name] == "true"
      true
    else
      false
    end
  end

  def command_colors(command_name)
    return {} unless color_enabled(command_name)
    config = user_configuration
    search = "color \"#{command_name}\""
    result = config[search]
  end

  def pretty
    user_configuration["pretty"]
  end

  private

  def default_configuration
    {
      "alias" => {},
      "address book" => {
        "path" => Dir.pwd
      },
    }
  end

  def user_configuration
    unless @user_config.nil?
      return @user_config
    end
    filename     = File.expand_path(USER_CONFIG)
    @user_config = {}
    if File.exist?(filename)
      @user_config = IniFile::load(filename).to_h
    elsif File.exist?(xdg_path)
      @user_config = IniFile::load(xdg_path).to_h
    end
    return @user_config
  end

  def repository_configuration
    {}
  end

  def xdg_path
    default = "~/.config"
    custom  = ENV["XDG_CONFIG_HOME"]
    if custom.nil?
      path = File.expand_path(default)
    else
      path = File.expand_path(custom)
    end
    File.join(path, "ppl", "config")
  end

end

