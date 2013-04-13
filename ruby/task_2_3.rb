# Write a simple grep that will print the lines of a file having any
# occurences of a phrase anywhere in that line. You will need to do
# a simple regular expression match and read lines from a file.
# (This is surprisingly simple in Ruby.) If you want, include line numbers.

raise ArgumentError, 'Not enough arguments; first: needle; second: haystack' unless ARGV.size == 2

re = Regexp.new ARGV[0]

File.open(ARGV[1], "r").each { |line| puts line unless (re =~ line).nil? }
