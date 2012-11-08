class RacePartnersController < ApplicationController
  # GET /race_partners
  # GET /race_partners.json
  def index
    @race_partners = RacePartner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @race_partners }
    end
  end

  # GET /race_partners/1
  # GET /race_partners/1.json
  def show
    @race_partner = RacePartner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @race_partner }
    end
  end

  # GET /race_partners/new
  # GET /race_partners/new.json
  def new
    @race_partner = RacePartner.new
    @races = Race.all
    @charities = Charity.all
    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @race_partner }
    end
  end

  # GET /race_partners/1/edit
  def edit
    @race_partner = RacePartner.find(params[:id])
    @races = Race.all
    @charities = Charity.all
  end

  # POST /race_partners
  # POST /race_partners.json
  def create
    @race_partner = RacePartner.new(params[:race_partner])

    respond_to do |format|
      if @race_partner.save
        format.html { redirect_to @race_partner, notice: 'Race partner was successfully created.' }
        format.json { render json: @race_partner, status: :created, location: @race_partner }
      else
        format.html { render action: "new" }
        format.json { render json: @race_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /race_partners/1
  # PUT /race_partners/1.json
  def update
    @race_partner = RacePartner.find(params[:id])

    respond_to do |format|
      if @race_partner.update_attributes(params[:race_partner])
        format.html { redirect_to @race_partner, notice: 'Race partner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @race_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /race_partners/1
  # DELETE /race_partners/1.json
  def destroy
    @race_partner = RacePartner.find(params[:id])
    @race_partner.destroy

    respond_to do |format|
      format.html { redirect_to race_partners_url }
      format.json { head :no_content }
    end
  end
end
