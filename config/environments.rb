
 configure :production, :development, :test do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres://vsgqseadtkyexq:11acad73dce86deada5a10490f9234438e770abdc8263dbdeac1ea75e9bbdc51@ec2-52-203-74-38.compute-1.amazonaws.com:5432/dd3f96jontl1eo')

  ActiveRecord::Base.establish_connection(
      :adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
      :host     => db.host,
      :username => db.user,
      :password => db.password,
      :database => db.path[1..-1],
      :encoding => 'utf8'
  )
end