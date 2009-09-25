module GreyboxHelper
  def greybox_includes
    '<script type="text/javascript">' + "\n" + 
   	'var GB_ROOT_DIR = "/greybox/";' + "\n" + 
   	'</script>' + "\n" + 
   	javascript_include_tag('../greybox/AJS.js') + "\n" + 
   	javascript_include_tag('../greybox/AJS_fx.js') + "\n" + 
   	javascript_include_tag('../greybox/gb_scripts.js') + "\n" + 
   	stylesheet_link_tag('greybox/gb_styles')
  end 
end
