# Bejar class
class Bejar
  def self.new(job, name)
    if job == 'plugin'
      Dir.chdir(Dir.pwd + '/bejar/routes') do
        Dir.mkdir(name)
        Dir.chdir(name) do
          f = File.new("#{name}.rb", 'w')
          f.close
        end
      end

      Dir.chdir(Dir.pwd + '/bejar/configs') do
        Dir.mkdir(name)
        Dir.chdir(name) do
          f = File.new("#{name}.rb", 'w')
          f.puts('class Bejar')
          f.puts('end')
          f.close
        end
      end

      Dir.chdir(Dir.pwd + '/bejar/helpers') do
        Dir.mkdir(name)
        Dir.chdir(name) do
          f = File.new("#{name}.rb", 'w')
          f.close
        end
      end

      Dir.chdir(Dir.pwd + '/bejar/models') do
        Dir.mkdir(name)
        Dir.chdir(name) do
          f = File.new("#{name}.model.rb", 'w')
          f.close
        end
      end

      Dir.chdir(Dir.pwd + '/bejar/views') do
        Dir.mkdir(name)
        Dir.chdir(name) do
          f = File.new("#{name}.haml", 'w')
          f.close
        end
      end
    end # end of if plugin
  end # end new function
end
