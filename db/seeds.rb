Post.delete_all
ActiveRecord::Base.connection.execute("ALTER TABLE posts AUTO_INCREMENT = 1;")

Post.create :title => 'Water', :text => "Water is super important.  Make sure you are drinking enough each day!<br/><p>Testing a p-tag</p><ul><li>Item 1</li><li>Item 2</li></ul>"
Post.create :title => 'Protein?', :text => 'Do you ever wonder whether you are getting enough or the appropriate type of protein?  According to the USDA, we should be eating 30 grams of protein each day.' 


FileUtils.mkdir("#{Rails.root}/app/assets/images/paperclip")
FileUtils.mkdir("#{Rails.root}/app/assets/images/paperclip/1")
FileUtils.mkdir("#{Rails.root}/app/assets/images/paperclip/1/original")
FileUtils.cp("coka-cola.png", "#{Rails.root}/app/assets/images/paperclip/1/original/")
