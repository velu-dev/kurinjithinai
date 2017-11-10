class BackendUsersController < ApplicationController
  before_action :set_backend_user, only: [:show, :edit, :update, :destroy]

  # GET /backend_users
  # GET /backend_users.json
  def index
    @backend_users = BackendUser.all
  end

  # GET /backend_users/1
  # GET /backend_users/1.json
  def show
  end

  # GET /backend_users/new
  def new
    @backend_user = BackendUser.new
  end

  # GET /backend_users/1/edit
  def edit
  end

  # POST /backend_users
  # POST /backend_users.json
  def create
    @backend_user = BackendUser.new(backend_user_params)

    respond_to do |format|
      if @backend_user.save
        format.html { redirect_to @backend_user, notice: 'Backend user was successfully created.' }
        format.json { render :show, status: :created, location: @backend_user }
      else
        format.html { render :new }
        format.json { render json: @backend_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backend_users/1
  # PATCH/PUT /backend_users/1.json
  def update
    respond_to do |format|
      if @backend_user.update(backend_user_params)
        format.html { redirect_to @backend_user, notice: 'Backend user was successfully updated.' }
        format.json { render :show, status: :ok, location: @backend_user }
      else
        format.html { render :edit }
        format.json { render json: @backend_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backend_users/1
  # DELETE /backend_users/1.json
  def destroy
    @backend_user.destroy
    respond_to do |format|
      format.html { redirect_to backend_users_url, notice: 'Backend user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backend_user
      @backend_user = BackendUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def backend_user_params
      params.require(:backend_user).permit(:user_name, :mobile_number, :email_id, :password, :role_id)
    end
end
