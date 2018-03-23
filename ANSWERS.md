# Q0: Why is this error being thrown?
no Pokemon model

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
from the random function in the seed file - all pokemon all trainerless

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
creates a button that creates a patch that calls the Capture method in the Pokemon controller - the pokemon's id is inputted as a parameter

# Question 3: What would you name your own Pokemon?
jeff

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
trainer_path(current_trainer.id) 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
it catches the error thrown and outputs an error page

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
