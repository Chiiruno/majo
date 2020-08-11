module board

// Config stores board-specific configuration
struct Config {
	BoardPublic
	DisableRobots	bool	json:disableRobots
	ID				string	json:id
}

// Public stores publically accessible board-specific configuration
pub struct Public {
	ReadOnly	bool				json:readOnly
	TextOnly	bool				json:textOnly
	ForcedAnon	bool				json:forcedAnon
	Flags		bool				json:flags
	NSFW		bool				json:nsfw
	DefaultCSS	string				json:defaultCSS
	Title		string				json:title
	Notice		string				json:notice
	Rules		string				json:rules
	Banners		[]uint8{ cap: 20 }	json:banners
}
