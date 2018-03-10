module UsersHelper
  def set_image(file)
    if !file.nil?
      file_name = file.original_filename 
      File.open("public/user_images/#{file_name}", 'wb') {|f| f.write(file.read)} 
      selg.image = file_name
    end
  end
end