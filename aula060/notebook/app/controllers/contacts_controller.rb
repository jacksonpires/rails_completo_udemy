class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  before_action :set_options_for_select, only: [:new, :edit, :update, :create]
  http_basic_authenticate_with name: "jackson", password: "123", only: :destroy

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.order(:name).page(params[:page]).per(15)
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
    @contact.build_address
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to contacts_path, notice: I18n.t('messages.created') }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to contacts_path, notice: I18n.t('messages.updated') }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_path, notice: I18n.t('messages.destroyed') }
      format.json { head :no_content }
    end
  end

  private
  
    def set_options_for_select
      @kind_options_for_select = Kind.all
    end
  
  
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :email, :kind_id, :rmk, 
        address_attributes: [:street, :city, :state],
        phones_attributes: [:id, :phone, :_destroy])
    end
end
