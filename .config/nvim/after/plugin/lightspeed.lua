local setup, lightspeed = pcall(require, "lightspeed")
if not setup then
	return
end

lightspeed.setup()
