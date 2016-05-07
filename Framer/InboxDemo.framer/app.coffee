# Import file "framersucks" (sizes and positions are scaled 1:2)
# Import find findModule - https://github.com/awt2542/Find-for-Framer

inbox = Framer.Importer.load("imported/framersucks@2x")

inbox.options.opacity = 0
inbox.overlay.opacity = 0
inbox.iconWrite.opacity = 0

inbox.overlay.states.add
	on:
		opacity: 1
inbox.overlay.states.animationOptions = curve: "spring(300, 30,0)"

inbox.options.states.add
	on:
		opacity: 1
inbox.options.states.animationOptions = curve: "spring(300, 30, 0)"

inbox.fab.onClick ->
	inbox.overlay.states.switch("on")
	inbox.options.states.switch("on")
	inbox.iconPlus.states.switch("on")
	inbox.iconWrite.states.switch("on")

inbox.overlay.onClick ->
	inbox.overlay.states.switch("default")
	inbox.options.states.switch("default")
	inbox.iconPlus.states.switch("default")
	inbox.iconWrite.states.switch("default")

inbox.iconWrite.rotation = -90

inbox.iconWrite.states.add
	on:
		opacity: 1
		rotation: 0
inbox.iconWrite.states.animationOptions = curve: "spring(500, 30, 0)"

inbox.iconPlus.states.add
	on:
		opacity: 0
		rotation: 90
inbox.iconPlus.states.animationOptions = curve: "spring(500, 30, 0)"