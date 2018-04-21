class ObservationsController < ApplicationController
 
# GET /movies/1/reviews
def index
# For URL like /movies/1/reviews
# Get the movie with id=1
@patient = Patient.find(params[:patient_id])
# Access all reviews for that movie
@observations = @patient.observations
end

# GET /movies/1/reviews/2
def show
@patient = Patient.find(params[:patient_id])
# For URL like /movies/1/reviews/2
# Find an review in movies 1 that has id=2
@observations = @patient.observations.find(params[:id])
end

# GET /movies/1/reviews/new
def new
@patient = Patient.find(params[:patient_id])
# Associate an review object with movie 1
@observation = @patient.observations.build
end

# POST /movies/1/reviews
def create
@patient = Patient.find(params[:patient_id])
# For URL like /movies/1/reviews
# Populate an review associate with movie 1 with form data
# Movie will be associated with the review
# @review = @movie.reviews.build(params.require(:review).permit!)
@observation = 
@patient.observations.build(params.require(:observation).permit(:infection, :summary))
if @observation.save
# Save the review successfully
redirect_to patient_observation_url(@patient, @observation)
else
render :action => "new"
end
end

# GET /movies/1/reviews/2/edit
def edit
@patient = Patient.find(params[:patient_id])
# For URL like /movies/1/reviews/2/edit
# Get review id=2 for movie 1
@observation = @patient.observations.find(params[:id])
end

# PUT /movies/1/reviews/2
def update
@patient = Patient.find(params[:patient_id])
@observation = Observation.find(params[:id])
if 
@observation.update_attributes(params.require(:observation).permit(:infection, :summary))
# Save the review successfully
redirect_to patient_observation_url(@patient, @observation)
else
render :action => "edit"
end
end


# DELETE /movies/1/reviews/2
def destroy
@patient = Patient.find(params[:patient_id])
@observation = Observation.find(params[:id])
@observation.destroy
respond_to do |format|
format.html { redirect_to patient_observations_path(@patient) }
format.xml { head :ok }
end
end
end