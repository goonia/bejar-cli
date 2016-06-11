lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'bejar/version'

task :buildgem do
	sh("gem build bejar.gemspec")
end

task :installgem do
	sh("gem install bejar-" + Bejar::VERSION + ".gem")
end

task :test do
	sh("rspec")
end

task :default =>[:buildgem, :installgem] do

end
