class EmotionController < ApplicationController

  def index
     @emotions = Emotion.all
  end

  def create
    emotion = Emotion.where("emotion LIKE ? OR group_emotion LIKE ?",
      "%#{emotion_param[:emotion].downcase}%",
      "%#{emotion_param[:emotion].upcase}%").first

    if emotion
      redirect_to emotion
    else
      redirect_to root_path, notice: "We don't know that emotion!"
    end
  end

  def show
     @emotion = Emotion.find(params[:id])
  end

  private

   def emotion_param
      params.require(:emotion).permit(:emotion)
   end
end
