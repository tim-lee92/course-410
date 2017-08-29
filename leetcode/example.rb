class Example
  def initialize
    Thread.new do
      sleep
    end
  end
end

p Thread.list
Example.new
Example.new
p Thread.list

sleep(2)

p Thread.list
