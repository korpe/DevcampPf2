User.create!(
  email: "test@test.com",
  password: "password",
  password_confirmation: "password",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
    email: "test2@test.com",
    password: "password",
    password_confirmation: "password",
    name: "Regular User"
)

puts "1 regular user created"

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "Blogipostaukseni #{blog}",
    body: "Niit' ennen isoni lauloi kirvesvartta vuollessansa; niitä äitini opetti väätessänsä värttinätä, minun lasna lattialla eessä polven pyöriessä, maitopartana pahaisna, piimäsuuna pikkaraisna. Sampo ei puuttunut sanoja eikä Louhi luottehia: vanheni sanoihin sampo, katoi Louhi luottehisin, virsihin Vipunen kuoli, Lemminkäinen leikkilöihin.",
    topic_id: Topic.last.id
  )
end

puts "10 blogposts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
      title: "Salkun otsikko #{portfolio_item}",
      subtitle: "Ruby on Rails",
      body: "Viikon on virteni vilussa, kauan kaihossa sijaisnut. Veänkö vilusta virret, lapan laulut pakkasesta, tuon tupahan vakkaseni, rasian rahin nenähän, alle kuulun kurkihirren, alle kaunihin katoksen, aukaisen sanaisen arkun, virsilippahan viritän, kerittelen pään kerältä, suorin solmun sommelolta?",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
      title: "Salkun otsikko #{portfolio_item}",
      subtitle: "Angular",
      body: "Viikon on virteni vilussa, kauan kaihossa sijaisnut. Veänkö vilusta virret, lapan laulut pakkasesta, tuon tupahan vakkaseni, rasian rahin nenähän, alle kuulun kurkihirren, alle kaunihin katoksen, aukaisen sanaisen arkun, virsilippahan viritän, kerittelen pään kerältä, suorin solmun sommelolta?",
      main_image: "http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "3 technologies created"