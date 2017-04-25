class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]
  before_action :check_role, only: [:index]

  # GET /people
  # GET /people.json

  def check_role
    if current_user.has_role? :admin
      puts "Welcome to Admin Dashboard"
    else
      redirect_to pages_profile_path(@person), alert: "Watch it, mister!"
    end
  end

  def index
    @people = Person.all
    # ransack
    @q = Person.ransack(params[:q])
    @people = @q.result
  end

    # GET /people/1
    # GET /people/1.json
  def show
    @people = Person.where(:user_id => current_user.id)
    # ransack
    @q = Person.ransack(params[:q])
    @people = @q.result
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  def newuserprofile
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    # authorize @person
    @person = Person.new(person_params)
    @person.user_id = current_user.id

    respond_to do |format|
      if @person.save
        format.html { redirect_to pages_profile_path, notice: 'Person was successfully created.' }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    authorize @person
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    authorize @person
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:user_id, :relation, :name, :age, :town, :story, :missing, :q, :avatar)
    end
end
