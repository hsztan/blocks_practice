class Application
  attr_accessor :environment

  def initialize
    @environment = :development
  end

  def in_environment(environment)
    old_environment = @environment
    @environment = environment
    yield
  rescue Exception => e
    puts e.message
  ensure
    @environment = old_environment
    puts "Reset environment to #{@environment}"
  end

  def connect_to_database
    puts "Connecting to #{@environment} database..."
  end

  def handle_request
    puts "Handling #{@environment} request..."
  end

  def write_to_log
    puts "Writing to #{@environment} log file..."
  end
end

app = Application.new
app.in_environment(:test) do
  app.connect_to_database
  app.handle_request
  app.write_to_log
end