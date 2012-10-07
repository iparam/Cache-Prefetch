module ApplicationHelper
	def cache_manifest 
		if request.path == "/"
			return "manifest=\"/cache.manifest\""
		else
			return ""
		end          
	end

	def page_key(key)
		return "#{@page}.#{key}"
	end

	def store_key
		"localStorage.setItem('#{page_key('carName')}','#{@carName}');"+\
		"localStorage.setItem('#{page_key('pageName')}','#{@pageName}');"+\
		"localStorage.setItem('#{page_key('user')}','#{@user}');"
	end
end