module config

// Config stores the master process' configuration
struct Config {
pub:
	/// Public API ///
	// Root is the FQDN clients connect to
	Root		string	=	'https://example.com'

	/// Private API ///
	// Socket is this pair's shared UNIX socket
	Socket		string	=	'/tmp/majo_auth.sock'

	/// Instance-specific ///
	// Debug this instance?
	Debug		bool	=	true
}

// Incorporates new member values into returned Config
fn (c &Config) set(v Config) &Config {
	return &Config{
		v.Root
		v.Socket
		c.Debug
	}
}
