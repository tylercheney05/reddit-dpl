class TopicsController < ApplicationController
  before_action :set_sub 
  before_action :set_topic, only: [ :show, :edit, :update, :destroy ]
  def index
    @topics = @sub.topics
    render component: 'Topics', props: { sub: @sub, topics: @topics }
  end
  def show
    render component: 'Topic', props: { sub: @sub, topic: @topic }
  end
  def new
    @topic = @sub.topics.new 
    render component: 'TopicNew', props: { sub: @sub, topic: @topic }
  end
  def create
    @topic = @sub.topics.new(topic_params)
    if @topic.save
      # redirect_to [@sub, @topic]
      redirect_to sub_topics_path(@sub)
    else
      render component: 'TopicNew', props: { sub: @sub, topic: @topic }
    end
  end
  def edit
    render component: 'TopicEdit', props: { sub: @sub, topic: @topic }
  end
  def update
    if @topic.update(topic_params)
      redirect_to sub_topics_path(@sub)
    else
      render component: 'TopicEdit', props: { sub: @sub, topic: @topic}
    end
  end
  def destroy
    @topic.destroy
    redirect_to sub_topics_path(@sub)
  end
  private 
    def topic_params
      params.require(:topic).permit(:name, :body)
    end
    def set_sub
      @sub = Sub.find(params[:sub_id])
    end
    def set_topic
      @topic = @sub.topics.find(params[:id])
    end
end