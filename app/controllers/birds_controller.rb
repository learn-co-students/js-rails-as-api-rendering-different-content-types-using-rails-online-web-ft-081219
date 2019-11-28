class BirdsController < ApplicationController
  def index
    # @birds = Bird.all
    # render 'birds/index.html.erb'
    # render plain: "Hello #{@birds[3].name}"
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    # render json: { message: 'Hashes of data will get converted to JSON' }
    # render json: ['As','well','as','arrays']
    # render json: @birds

    # rendering json with a message, both sorted into separate arrays:
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }

    # we can implicitly convert our array or hasg into JSON in the controller, though Rails will automatically do that for us
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json


    # However, we really only needed instance variables when we were rendering to ERB. 
    # Now that we are directly rendering to JSON in the same action, 
    # we no longer need to deal with instance variables and can instead just use a local variable:
    birds = Bird.all
    render json: birds

  end
end
