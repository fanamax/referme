# Thanks Ed (borrowed from dhtml_calendar)
# Workaround a problem with script/plugin and http-based repos.
# See http://dev.rubyonrails.org/ticket/8189
Dir.chdir(Dir.getwd.sub(/vendor.*/, '')) do

##
## Copy over asset files (javascript/css/images) from the plugin directory to public/
##

  def copy_files(source_path, destination_path, directory)
    source, destination = File.join(directory, source_path), File.join(RAILS_ROOT, destination_path)
    FileUtils.mkdir(destination) unless File.exist?(destination)
    FileUtils.cp_r(Dir.glob(source+'/*.*'), destination)
  end
  
  directory = File.dirname(__FILE__)

  copy_files("/public", "/public", directory)

 	path = "/public/stylesheets/greybox"
  copy_files(path, path, directory)
  
  source = "/public/stylesheets/"
  destination = "/public/stylesheets/greybox"
  copy_files(source, destination, directory)
 
  
  # This folder is for preloading images and loader frame.  
  # GB_ROOT_DIR
  source = "/public/greybox"
  destination = "/public/greybox"
  copy_files(source, destination, directory)
	copy_files("public/javascripts", destination, directory)
end
