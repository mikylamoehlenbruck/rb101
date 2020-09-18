File::path
  - returns a string of the file path
  - a class method that is called on the File class
  - File.path('filename')

File#path
  - instance method called on the object
  - returns a string,but a string object has to
    exist first for it to be called on it
  - First has to be created with File.new()
  - f = File.new('file.txt')
    puts f.path
