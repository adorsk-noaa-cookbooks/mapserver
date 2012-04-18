version          "0.0.1"

%w{apt postgresql}.each do |cb|
	depends cb
end
