class FileIo

  def read_file(filename = "./data/shake.txt")
    File.read(filename)
  end

end
