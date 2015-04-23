require 'tk'

def window!
	@msgBox = Tk.messageBox(
	  'type'    => "yesno", # okcancel retrycancel yesno yesnocancel abortretryignore 
	  'icon'    => "info", #error, info, question or warning
	  'title'   => "This is title",
	  'message' => "Quit?"
	)


	if @msgBox == "yes"
		abort()
	else
		window!
	end
end

window!
