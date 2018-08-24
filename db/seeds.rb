# ruby encoding: utf-8
movies = [{:title => 'Aladdin', :rating => 'G', :description => "When a street urchin vies for the love of a beautiful princess, he uses a genie's magic power to make himself off as a prince in order to marry her." ,:release_date => '25-Nov-1992'},
    	  {:title => 'The Terminator', :rating => 'R',  :description => 'A seemingly indestructible android is sent from 2029 to 1984 to assassinate a waitress, whose unborn son will lead humanity in a war against the machines, while a soldier from that war is sent to protect her at all costs.', :release_date => '26-Oct-1984'},
    	  {:title => 'When Harry Met Sally', :rating => 'R',  :description => 'Harry and Sally have known each other for years, and are very good friends, but they fear sex would ruin the friendship.', :release_date => '21-Jul-1989'},
      	  {:title => 'The Help', :rating => 'PG-13', :description => 'An aspiring author during the civil rights movement of the 1960s decides to write a book detailing the African American maid%qs point of view on the white families for which they work, and the hardships they go through on a daily basis.', :release_date => '10-Aug-2011'},
      	  {:title => 'Chocolat', :rating => 'PG-13', :description => 'A woman and her daughter open a chocolate shop in a small French village that shakes up the rigid morality of the community.', :release_date => '5-Jan-2001'},
      	  {:title => 'Amelie', :rating => 'R', :description => 'Amélie is an innocent and naive girl in Paris with her own sense of justice. She decides to help those around her and, along the way, discovers love.', :release_date => '25-Apr-2001'},
      	  {:title => '2001: A Space Odyssey', :description => 'Humanity finds a mysterious, obviously artificial object buried beneath the Lunar surface and, with the intelligent computer HAL 9000, sets off on a quest.', :rating => 'G', :release_date => '6-Apr-1968'},
      	  {:title => 'The Incredibles', :rating => 'PG', :description => 'A family of undercover superheroes, while trying to live the quiet suburban life, are forced into action to save the world.', :release_date => '5-Nov-2004'},
      	  {:title => 'Raiders of the Lost Ark', :description => 'In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before Adolf Hitler%qs Nazis can obtain its awesome powers. ', :rating => 'PG', :release_date => '12-Jun-1981'},
      	  {:title => 'Chicken Run', :rating => 'G', :description => 'When a cockerel apparently flies into a chicken farm, the chickens see him as an opportunity to escape their evil owners.', :release_date => '21-Jun-2000'},
      	 ]

movies.each do |movie|
  Movie.create!(movie)
end