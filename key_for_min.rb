# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    if name_hash.empty?
        nil
    else
        smallest_key = name_hash.first.first
        smallest_value = name_hash.first.last
    
        name_hash.collect do |key, value|
            if value < smallest_value
                smallest_value = value
                smallest_key = key
            end
        end
        
        return smallest_key
    end
end