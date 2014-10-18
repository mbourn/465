Rails.application.routes.draw do

  # form for creating a new high_score
  get 'high_scores/new', to: 'high_scores#new', as: 'new_high_score'

  # an individual high score
  get 'high_scores/:id', to: 'high_scores#show', as: 'high_score'

  # all of the high scores
  get 'high_scores', to: 'high_scores#index', as: 'high_scores'

  # after form genereated by new is filled out user comes to 
  # this page to create the actual object
  post 'high_scores', to: 'high_scores#create'

  root 'high_scores#index'
  

end
