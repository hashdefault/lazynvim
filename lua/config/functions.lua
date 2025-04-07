-- functions.lua
function generateGettersAndSetters()
	local line = vim.api.nvim_get_current_line() -- Extract the attribute name from the current line local attribute = line:match("%$([%w_]+)")

	if attribute then
		-- Generate the getter and setter methods
		local setter = "\n\n  /**\n * @param $" .. attribute .. "\n * @return\n **/\n"
		setter = setter
			.. "    function set"
			.. attribute:sub(1, 1):upper()
			.. attribute:sub(2)
			.. "($"
			.. attribute
			.. ")\n    {\n"
			.. "    $this->"
			.. attribute
			.. " = $"
			.. attribute
			.. ";\n"
			.. "    return;\n"
			.. "    }"

		local getter = "\n\n    /**\n * @return\n **/\n"
		getter = getter
			.. "    function get"
			.. attribute:sub(1, 1):upper()
			.. attribute:sub(2)
			.. "()\n    {\n"
			.. "    return $this->"
			.. attribute
			.. ";\n"
			.. "    }"

		-- Combine getter and setter
		local generatedCode = setter .. "\n" .. getter .. "\n } " -- the last } is it to fix the replaced

		-- Split generatedCode into separate lines
		local lines = vim.split(generatedCode, "\n")

		-- Append generated lines to the buffer
		local current_buffer = vim.api.nvim_get_current_buf()
		vim.api.nvim_buf_set_lines(current_buffer, -2, -1, true, lines)
	else
		print("No attribute found on the current line.")
	end
end

return {
	generateGettersAndSetters = generateGettersAndSetters,
}



