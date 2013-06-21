class Federal1870CensusEntriesController < ApplicationController
  # GET /federal1870_census_entries
  # GET /federal1870_census_entries.json
  def index
    if params['filter_key'].blank?
      @federal1870_census_entries = Federal1870CensusEntry.all
    else
      @filter_column = params['filter_key']
      @filter_value = params['filter_value']
      @federal1870_census_entries = Federal1870CensusEntry.where(@filter_column => @filter_value)    
    end


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @federal1870_census_entries }
    end
  end

  # GET /federal1870_census_entries/1
  # GET /federal1870_census_entries/1.json
  def show
    @federal1870_census_entry = Federal1870CensusEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @federal1870_census_entry }
    end
  end

  # GET /federal1870_census_entries/new
  # GET /federal1870_census_entries/new.json
  def new
    @federal1870_census_entry = Federal1870CensusEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @federal1870_census_entry }
    end
  end

  # GET /federal1870_census_entries/1/edit
  def edit
    @federal1870_census_entry = Federal1870CensusEntry.find(params[:id])
  end

  # POST /federal1870_census_entries
  # POST /federal1870_census_entries.json
  def create
    @federal1870_census_entry = Federal1870CensusEntry.new(params[:federal1870_census_entry])

    respond_to do |format|
      if @federal1870_census_entry.save
        format.html { redirect_to @federal1870_census_entry, notice: 'Federal1870 census entry was successfully created.' }
        format.json { render json: @federal1870_census_entry, status: :created, location: @federal1870_census_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @federal1870_census_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /federal1870_census_entries/1
  # PUT /federal1870_census_entries/1.json
  def update
    @federal1870_census_entry = Federal1870CensusEntry.find(params[:id])

    respond_to do |format|
      if @federal1870_census_entry.update_attributes(params[:federal1870_census_entry])
        format.html { redirect_to @federal1870_census_entry, notice: 'Federal1870 census entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @federal1870_census_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /federal1870_census_entries/1
  # DELETE /federal1870_census_entries/1.json
  def destroy
    @federal1870_census_entry = Federal1870CensusEntry.find(params[:id])
    @federal1870_census_entry.destroy

    respond_to do |format|
      format.html { redirect_to federal1870_census_entries_url }
      format.json { head :no_content }
    end
  end

  
  def browse
  
  end
  
  def browse_by
    @attribute_name = params['field']
    @value_total_pairs = Federal1870CensusEntry.browse_by(@attribute_name)
  end
  
end
