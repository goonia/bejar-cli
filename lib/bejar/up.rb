# Bejar class
class Bejar
  def self.up
    f = File.new('config.ru', 'w')
    f.puts 'Bundler.require'
    f.puts "require_relative 'bejar/main'"

    # Load Helpers
    f.puts "require_relative 'bejar/helpers/bejar.rb'"
    Dir.chdir('bejar/helpers') do
      Dir.entries(Dir.pwd).each do |item|
        next if item == '.' || item == '..'
        next unless File.directory? item
        f.puts "require_relative 'bejar/helpers/#{item}/#{item}.rb'"
        puts item
      end
    end

    # Load Configs
    f.puts "require_relative 'bejar/configs/bejar.rb'"
    Dir.chdir('bejar/configs') do
      Dir.entries(Dir.pwd).each do |item|
        next if item == '.' || item == '..'
        next unless File.directory? item
        f.puts "require_relative 'bejar/configs/#{item}/#{item}.rb'"
        puts item
      end
    end

    # Load Models
    f.puts "require_relative 'bejar/models/bejar.model.rb'"
    Dir.chdir('bejar/models') do
      Dir.entries(Dir.pwd).each do |item|
        next if item == '.' || item == '..'
        next unless File.directory? item
        f.puts "require_relative 'bejar/models/#{item}/#{item}.model.rb'"
        puts item
      end
    end

    # Load Routes
    f.puts "require_relative 'bejar/routes/bejar.rb'"
    Dir.chdir('bejar/routes') do
      Dir.entries(Dir.pwd).each do |item|
        next if item == '.' || item == '..'
        next unless File.directory? item
        f.puts "require_relative 'bejar/routes/#{item}/#{item}.rb'"
        puts item
      end
    end

    f.puts """
    run Rack::URLMap.new({
      '/user' => BejarPublic,
      '/' => Bejar
    })
    """
    f.close

    system('rake db:migrate')

    system('rackup -p 2048')
  end
end
