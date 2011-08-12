# -*- coding: utf-8 -*-
Post.delete_all
User.delete_all
ActiveRecord::Base.connection.execute("ALTER TABLE posts AUTO_INCREMENT = 1;")

User.create :email => 'gospodarek@gmail.com', :username =>'marsha', :password=>'abasin'


Post.create :title => 'CSA', :text => "<p>Looks delicious, doesn't it?</p><break/><p>For the past 3 years, my husband and I have joined a CSA, which stands for Community Supported Agriculture. Basically, as members, we buy into the costs of a farm
and in return, receive a weekly supply of organic, beautiful vegetables and fruits. There are many CSAs throughout the country and it is important to choose one whose growing principles and practices align with yours. We support Grant Family Farms here in Colorado and have even been to the farm to see how they operate. When thinking about what you eat, transparency in how the food got from seed to your plate is key!</p>
<p>It's great to know that not only are we supporting local farmers and receiving healthy foods in return, but that we are also putting our dollars toward practices we believe in. In a sense, our purchase of our share is a vote against mass-produced, unhealthier foods.</p>",
:photo_content_type=>"image/png", :photo_file_name=>"csa.jpg", :photo_file_size=>58150

Post.create :title => 'Moroccan Lentil Stew', :text => '<p>I have been really into crock pots lately. Perhaps winter is to blame or perhaps it is because crock pots are amazingly awesome! We were in Marseille, France last month and we had a tasty Moroccan dish.</p><break/>
<p>Although I had no idea what was in it, I tried to replicate it tonight, with clean modifications, of course. Safe to say, my husband and I both loved it!</p>
<ul>
    <b>Ingredients</b></li>
    <li>1 large diced onion</li>
    <li>2 cans of organic diced tomatoes</li>
    <li>One red bell pepper, diced</li>
    <li>One cup dried lentils</li>
    <li>3 cloves minced garlic</li>
    <li>1 Tbsp. curry seasoning</li>
    <li>1/2 Tbsp. cumin</li>
    <li>Salt</li>
    <li>Pepper</li>
    <li>Cayenne pepper – to taste</li>
    <li>1 cup water</li>
</ul>
<p>Add all ingredients except for the lentils to a large pot or crock-pot and cook on low until veggies are cooked to desired consistency (3-5 hours). Add the lentils the last hour. I like curry, so I ended up adding more curry at the end. The butternut squash adds the perfect amount of sweetness to this dish.</p>
<p>I used green lentils, but I’m sure you could use other varieties. I find that green stay intact better. Also, don’t forget to rinse your lentils before adding them to the pot!</p>
<p>I apologize for not having a photo of the end-result. I guess it was just too good as we ate it all before I remembered to snap a photo. The photo above is a before shot instead.</p>',
:photo_content_type=>"image/png", :photo_file_name=>"moroccan_lentil_stew.jpg", :photo_file_size=>51484

Post.create :title=>'Lentil Sloppy Joes', :text=>'<p>My mom makes the best Sloppy Joes – unfortunately they are also almost all beef. In recent efforts to reduce my intake of animal products, I attempted to create a similar taste with lentils! Did I mention I love lentils?</p><break/>
<ul>
    <b>Ingredients</b>
    <li>2 cups dry green lentils</li>
    <li>1 large diced onion</li>
    <li>2 cups diced celery</li>
    <li>4 cloves or garlic, diced</li>
    <li>2 cans of organic diced tomatoes</li>
    <li>2 small cans of organic tomato paste</li>
    <li>4 tbsp. Bragg’s liquid amino acids</li>
    <li>2 tbsp. spicy mustard</li>
    <li>1 tbsp. agave</li>
    <li>2 tbsp. paprika</li>
    <li>cayenne pepper</li>
    <li>salt and pepper</li>
</ul>
<p>Bring the lentils and enough water to boil. Then reduce heat, cover and simmer for about 30 minutes. When the lentils are tender, remove from heat and drain. Add the lentils back to a pot along with the remaining ingredients. Cook on low heat for about 20 minutes.</p>',
:photo_content_type=>"image/png", :photo_file_name=>"lentil_sloppy_joes.jpg", :photo_file_size=>65526

Post.create :title=>'My #1 Love!', :text=>'<p>How could it be anything other than my Vitamix?</p><break/>
<p>I have had my machine for about 6 months and can honestly say that I use it at least once a day. Usually 2, and sometimes 3 or 4!</p>
<p>I start every day with a large green smoothie made up of veggies and fruits. I generally like to have the majority of my smoothie be dark leafy greens (kale, chard, spinach, etc.) and only add a piece of frozen banana to add a bit of sweetness. I have been even known to travel with my Vitamix taking it to our cabin in the mountains.</p>',
:photo_content_type=>"image/png", :photo_file_name=>"smoothie.jpg", :photo_file_size=>49803

Post.create :title=>'Veggie Chili', :text=>'<p>Chili, for me is a weekly regular. Especially in the winter. Something about it slowly simmering all day really gets my mouth watering. I usually add whichever vegetables I have in the house into the mix, and occasionally lean ground turkey or chicken. But usually just veggies.</p><break/>
<ul>
    <b>Ingredients</b>
    <li>About 2 cups diced celery</li>
    <li>1 large diced onion</li>
    <li>3 cans of organic diced tomatoes or a number of fresh diced tomatoes</li>
    <li>1 large diced green pepper</li>
    <li>Broccoli crowns</li>
    <li>Cauliflower</li>
    <li>Organic black beans</li>
    <li>Cayenne pepper</li>
    <li>Chili powder</li>
    <li>Garlic</li>
    <li>Cilantro</li>
</ul>
<p>Add all ingredients to a pot and simmer until the veggies are to your liking. I like to set the temperature on low and cook for 3-4 hours. When served, I top with fresh cilantro – yum!</p>
<p>The nice thing about chili is that you really can’t mess it up. If I have summer squash or green beans in the house, I will throw that in. Same thing for a variety of beans and lentils. Experiment!</p>',
:photo_content_type=>"image/png", :photo_file_name=>"veggie_chili.jpg", :photo_file_size=>62787




FileUtils.remove_dir("#{Rails.root}/public/images/paperclip", true)
FileUtils.cp_r("#{Rails.root}/public/images/paperclip.bk", "#{Rails.root}/public/images/paperclip")
