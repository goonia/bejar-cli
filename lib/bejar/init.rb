class Bejar
    def self.init project

        if File.exist? project
          puts "#{project} directory currently exists."
        else
          Dir.mkdir(project)
          puts "Project inited"
          Dir.chdir(Dir.pwd + "/#{project}") do
            system("git clone git@github.com:goonia/bejar.git .")
            puts "project cloned"
            system("rm -rf .git/")
          end
        end
        
    end
end
