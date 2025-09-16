class HogeController < ApplicationController
    def top
        interiorData = AdministratorInterior.order(created_at: :desc).limit(10);
        headlightData = AdministratorHeadlight.order(created_at: :desc).limit(10);
        wheelData = AdministratorWheel.order(created_at: :desc).limit(10);
        indoorCleaningData = AdministratorIndoorCleaning.order(created_at: :desc).limit(10);
        @topData = (interiorData.to_a + headlightData.to_a + wheelData.to_a + indoorCleaningData.to_a)
            .sort_by(&:created_at)
            .reverse
            .first(4)
    end

    def interior
        @interiorData = AdministratorInterior.order(created_at: :desc).limit(4);
    end
    
    def headlight
        @headlightData = AdministratorHeadlight.order(created_at: :desc).limit(4);
    end
    
    def wheel
        @wheelData = AdministratorWheel.order(created_at: :desc).limit(4);
    end
    
    def indoor_cleaning
        @indoorCleaningData = AdministratorIndoorCleaning.order(created_at: :desc).limit(4);
    end
end
