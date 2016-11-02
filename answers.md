# Q0: Why is this error being thrown?
	There existed no pokemon model.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

	There is a random generator spawning a pokemon from the list of pokemons available to spawn. They come from the seed file.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

	It creates a button that redirects to capture_path(id: @pokemon). capture_path binds pokemon to trainer and vice versa and redirects to home.

# Question 3: What would you name your own Pokemon?

	depends what pokemon. usually i don't name mine.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

	redirect_to pokemon's trainer's path. It is based on the pokemon's trainer's id

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

	the application.html.erb renders the layouts and messages. this allows the errors to show.

# Give us feedback on the project and decal below!
	
	I think I was still struggling through the project because I don't think I picked up Ruby on Rails code and fundaments. Learning this stuff once a week doesn't stick to me.

# Extra credit: Link your Heroku deployed app
