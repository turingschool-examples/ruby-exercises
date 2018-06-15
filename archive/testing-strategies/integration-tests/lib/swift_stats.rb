require "./lib/file_io"
require "./lib/analyze"
fileio = FileIo.new.read_file

puts Analyze.new.analysis(fileio)
