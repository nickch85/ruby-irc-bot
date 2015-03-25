require 'cinch'
project_root = File.dirname(File.absolute_path(__FILE__))
Dir.glob(project_root + '/plugins/*') {|file| require file}


bot = Cinch::Bot.new do
  configure do |c|
    c.nick = 'hrmm'
    c.server = "irc.devs.co.nz"
    c.channels = ["#devteam"]
    c.plugins.plugins = [Hello, Google, UrbanDictionary]
  end
end

bot.start