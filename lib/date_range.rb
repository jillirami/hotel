module HotelManagementSystem
    class DateRange
        def self.is_valid?(start_date, end_date)
            start_date = Date.parse(start_date.to_s)
            end_date = Date.parse(end_date.to_s)
            is_valid = true
            if start_date.nil? || end_date.nil? || !end_date.nil? && end_date < start_date
                is_valid = false
            end
            return is_valid
        end

        def self.within_range?(start_date, end_date, requested_date)
            start_date = Date.parse(start_date.to_s)
            end_date = Date.parse(end_date.to_s)
            requested_date = Date.parse(requested_date.to_s)
            within_range = false
            if start_date <= requested_date && requested_date < end_date
                within_range = true
            end
            return within_range
        end
    end
end