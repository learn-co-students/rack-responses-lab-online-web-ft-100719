class Application
  def call(env)
    resp = Rack::Response.new
    t = Time.now
    morning_greeting = resp.write "Good Morning!"
    afternoon_greeting = resp.write "Good Afternoon!"

    t.hour < 12 ? morning_greeting : afternoon_greeting

    resp.finish
  end
end
