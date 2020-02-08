class Api::V1::AcTenantsController < ApplicationController
  before_action :set_ac_tenant, only: [:show, :edit, :update, :destroy]

  # GET /ac_tenants
  # GET /ac_tenants.json
  def index
    @ac_tenants = AcTenant.all
    render json: @ac_tenants
  end

  # GET /ac_tenants/1
  # GET /ac_tenants/1.json
  def show
  end

  # GET /ac_tenants/new
  def new
    @ac_tenant = AcTenant.new
  end

  # GET /ac_tenants/1/edit
  def edit
  end

  # POST /ac_tenants
  # POST /ac_tenants.json
  def create
    @ac_tenant = AcTenant.new(ac_tenant_params)

    respond_to do |format|
      if @ac_tenant.save
        format.html { redirect_to @ac_tenant, notice: 'Ac tenant was successfully created.' }
        format.json { render :show, status: :created, location: @ac_tenant }
      else
        format.html { render :new }
        format.json { render json: @ac_tenant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ac_tenants/1
  # PATCH/PUT /ac_tenants/1.json
  def update
    respond_to do |format|
      if @ac_tenant.update(ac_tenant_params)
        format.html { redirect_to @ac_tenant, notice: 'Ac tenant was successfully updated.' }
        format.json { render :show, status: :ok, location: @ac_tenant }
      else
        format.html { render :edit }
        format.json { render json: @ac_tenant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ac_tenants/1
  # DELETE /ac_tenants/1.json
  def destroy
    @ac_tenant.destroy
    respond_to do |format|
      format.html { redirect_to ac_tenants_url, notice: 'Ac tenant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ac_tenant
      @ac_tenant = AcTenant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ac_tenant_params
      params.require(:ac_tenant).permit(:name)
    end
end
