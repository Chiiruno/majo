module config

// Config stores the master process' configuration
struct Config {
pub:
	/// Public API ///
	// Root is the FQDN clients connect to
	Root		string	=	'https://example.com'
	// DefaultLang is the default language presented to the client
	DefaultLang	string	=	'en_US'
	// DefaultCSS is the default theme presented to the client
	DefaultCSS	string	=	'ocean'
	// Userboards determines whether or not user-created boards are allowed
	UserBoards	bool	=	true

	/// Private API ///
	// Socket is this pair's shared UNIX socket
	Socket		string	=	'/tmp/majo_master.sock'

	/// Instance-specific ///
	// Debug this instance?
	Debug		bool	=	true
}

// Incorporates new member values into returned Config
fn (c &Config) set(v Config) &Config {
	return &Config{
		v.Root
		v.DefaultLang
		v.DefaultCSS
		v.UserBoards
		v.Socket
		c.Debug
	}
}
