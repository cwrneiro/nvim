return {
	{
		'VidocqH/lsp-lens.nvim',
		config = function()
			require('lsp-lens').setup(
				{
					include_declaration = false,
					sections = {
						definition = false,
						references = true,
						implements = true,
						git_authors = true,
					},

			 }
		 )
	 end
 }
}
