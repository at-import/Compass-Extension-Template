# Description 
description "Description of your Compass Template"

# Stylesheet Import
file 'screen.scss',  :media => 'screen, projection'
file 'print.scss',  :media => 'screen, projection'
file 'ie.scss',  :media => 'screen, projection', :condition => "lt IE 9"

# Compass Extension Help
help %Q{
  Help for your Compass extension
}

# Compass Extension Welcome Message
#  Users will see this when they create a new project using this template.
welcome_message %Q{
  Welcome to my Compass Extension!
}