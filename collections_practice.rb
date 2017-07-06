# your code goes here
def begins_with_r(array)
  array.all? do |element|
    element[0] == "r"
  end
end

def contain_a(array)
  array.select { |element| element.include?("a") }
end

def first_wa(array)
  array.find do |element|
    element[0] == "w" && element[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if { |obj| !(obj.is_a? String) }
  #can also use #array.grep(String)
end

def count_elements(array)
    array.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
end

def merge_data(array1, array2)
  array2[0].values.map.with_index {|v, i| array1[i].merge(v)}
end

def find_cool(value)
  value.select {|element| element[:temperature] == "cool"}
end

def organize_schools(schools)
  schools.each_with_object({}) do |(name, data), res|
    (res[data[:location]] ||= []) << name
  end
end
