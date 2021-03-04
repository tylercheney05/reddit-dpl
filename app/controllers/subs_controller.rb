class SubsController < ApplicationController
  # Skinny Controllers / fat model
  # Action - items on your webpage
  # C.R.U.D
  # Create -> POST
  # Read -> GET
  # Update -> PUT / PATCH
  # Destroy -> DELETE
  # convention over configuration
  # pattern learn
  # a controller action must return HTML, JSON, XML, redirect action that does

  # GET / READ
  # index - view all of the records in the table
    # def index
    #   @model_names = Model_name.all
    #   render component: "ModelNames", props: { model_names: @model_names:}
    # end

  # show - needs id, show a single record in the table
    # def show
    #   @model_name = Model_name.find(params[:id])
    #   render component: "ModelName", props: { model_name: @model_name }
    # end

  # new - create an obj in memory, have shown the new form
    # def new
    #   @model_name = Model_name.new
    #   render component: "ModelNameNew", props: { model_name: @model_name}
    # end

  # edit - needs id, show teh edit form
    # def edit
    #   @model_name = Model_name.find(params[:id])
    #   render component: "ModelNameEdit", props: { model_name: @model_name}
    # end

  # Create / POST
    # - take the data in the form and create in the db
    # def create
    #   @model_name = Model_name.new(model_name_params)
    #   if @model_name.save
    #     # render or redirect
    #   else
    #     render component: 'ModelNameNew', props: { model_name: @model_name }
    #     render :new
    #   end
    # end

    # private
    #   def model_name_params
    #     params.require(:model_name).permit(:attr, :attr2, :everythingTheTableHas)
    #   end

  # Update / PUT
    # -take values from teh edit form and it will find the record with id, update the record in the db
    # def update
    #   @model_name = Model_name.find(params[:id])
    #   if @model_name.update(model_name_params)
    #     # render or redirect
    #   else
    #     render component: 'ModelNameEdit', props: { model_name: @model_name }
    #   end
    # end

  # Destroy / DELETE
      # - find the record with the given id, delete the record in the db
      # def destroy
      #   @model_name = Model_name.find(params[:id])
      #   @model_name.destroy
      #   # redirect to
      # end

  def index
    subs = Sub.all
    render component: 'Subs', props: { subs: @subs }
  end

  def show
    @sub = Sub.find(params[:id])
    render component: 'Sub', props: { sub: @sub }
  end

  def new
    @sub = Sub.new
    render component: 'SubNew', props: { sub: @sub }
  end

  def create
    @sub = Sub.new(sub_params)
    if @sub.save
      redirect_to subs_path
    else
      render component: 'SubNew', props: { sub: @sub }
    end
  end

  def edit
    @sub = Sub.find(params[:id])
    render component: 'SubEdit', props: { sub: @sub }
  end

  def update
    @sub = Sub.find(params[:id])
    if @sub.update(sub_params)
      redirect_to subs_path
    else
      render component: 'SubEdit', props: { sub: @sub }
    end
  end

  def destroy
    @sub = Sub.find(params[:id])
    @sub.destroy
    redirect_to subs_path
  end

  private
    def sub_params
      params.require(:sub).permit(:title)
    end

end