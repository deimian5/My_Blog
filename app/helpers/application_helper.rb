module ApplicationHelper
	def fecha(created_at)
    	created_at.strftime("%d/%m/%Y")
 	end
 	def markdown(text)  
    	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    	markdown.render(text)
  	end 
end
