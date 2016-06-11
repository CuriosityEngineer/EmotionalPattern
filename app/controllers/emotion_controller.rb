class EmotionController < ApplicationController

  def index
    @emotions = Emotion.all
  end

  def show
    @emotion = Emotion.find(params [:id])
  end
  
end
