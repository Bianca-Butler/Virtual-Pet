var frame, state, time
var happy, sad, hungry, frighten, playful, calm, sleep, angry, talk, playing

fun init() {

	# Giving states a number
	sleep : 0
	calm : 1
	happy : 2
	hungry : 3
	sad : 4
	angry : 5
	frighten : 6
	playful : 7
	talk : 8
	playing : 9

	# Inital state
	frame : makeimg()
        setimg(.frame, " CSP.png ")
	state : .sleep
	
	# Interaction Buttons
	button(" Wake ", wake)
	button(" Feed ", feed)	
	button(" Pet ", pet)
	button(" Play ", play)
	button(" Put to sleep ", sleepy)
}

fun randomState() {
	var newState
	newState : random(10)

	state : .newState

	if .state == .sleep {
		setimg(.frame, " CSP.png ")
	}
	else if .state == .calm {
		setimg(.frame, " CCL.png ")
	}
	else if .state == .happy {
		setimg(.frame, " CHP.png ")
	}
	else if .state == .sad {
		setimg(.frame, " CS.png ")
	}
	else if .state == .angry {
		setimg(.frame, " CM.png ")
	}
	else if .state == .frighten {
		setimg(.frame, " CF.png ")
	}
	else if .state == .playful {
		setimg(.frame, " CPLF.png ")
	}
	else if .state == .talk {
		setimg(.frame, " CPT.png ")
	}
	else if .state == .hungry {
		setimg(.frame, " CH.png ")
	}
	
	time : timer(10000, randomState)

}

fun wake() {
	if .state == .sleep {
		state : .calm
		setimg(.frame, " CCL.png ")
	}
	stoptimer(.time)
	time : timer(10000, randomState)
}

fun pet() {
	if .state == .sad {
		state : .happy
		setimg(.frame, " CHP.png ")
	}
	else if .state == .talk {
		state : .happy
		setimg(.frame, " CHP.png ")
	}
	else if .state == .happy {
		state : .playful
		setimg(.frame, " CPLF.png ")
	}
	else if .state == .calm {
		state : .talk
		setimg(.frame, " CPT.png ")
	}	
	else if .state == .frighten {
		state : .calm
		setimg(.frame, " CCL.png ")
	}
	else if .state == .angry {
		state : .calm
		setimg(.frame, " CCL.png ")
	}
	stoptimer(.time)
        time : timer(10000, randomState)
}

fun feed() {
	if .state == .hungry {
		state : .happy
		setimg(.frame, " CHP.png ")
	}
	else if .state == .sad {
		state : .happy
		setimg(.frame, " CHP.png ")
	}
	else if .state == .frighten {
		state : .angry
		setimg(.frame, " CM.png ")
	}
	stoptimer(.time)
        time : timer(10000, randomState)
}

fun play() {
	if .state == .playful {
		state : .playing
		setimg(.frame, " CPL.png ")
	}
	else if .state == .sad {
		state : .playing
		setimg(.frame, " CPL.png ")
	}
	else if .state == .happy {
		state : .playing
		setimg(.frame, " CPL.png ")
	}
	else if .state == .calm {
		state : .playing
		setimg(.frame, " CPLF.png ")
	}
	stoptimer(.time)
        time : timer(10000, randomState)
}

fun sleepy() {
	if .state == .calm {
		state : .sleep
		setimg(.frame, " CSP ")
	}
	else if .state == .frighten {
		state : .angry
		setimg(.frame, " CM.png ")
	}
	else if .state == .sad {
		state : .sleep
		setimg(.frame, " CSP.png ")
	}
	else if .state == .happy {
		state : .sleep
		setimg(.frame, " CSP.png ")
	}
	stoptimer(.time)
        time : timer(10000, randomState)
}
