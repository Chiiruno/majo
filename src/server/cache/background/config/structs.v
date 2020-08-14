module config

// Config stores the master process' configuration
struct Config {
pub:
	/// Public API ///
	// Root is the FQDN clients connect to
	Root		string	=	'https://cache.example.com'
	// MaxRes is the maximum resolution of an image or video allowed
	MaxRes		[]uint16{ len: 2, cap: 2, init: 6000 }
	// MaxSize is the maximum size in megabytes of a file allowed
	MaxSize		uint8	=	8

	/// Private API ///
	// Socket is this pair's shared UNIX socket
	Socket		string	=	'/tmp/majo_cache.sock'

	/// Instance-specific ///
	// Debug this instance?
	Debug		bool	=	true
}

// Incorporates new member values into returned Config
fn (c &Config) set(v Config) &Config {
	return &Config{
		v.Root
		v.MaxRes
		v.MaxSize
		v.Socket
		c.Debug
	}
}
