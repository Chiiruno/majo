module server

// Config stores the global server configuration
struct Config {
	Public
	PruneBoards		bool	json:pruneBoards			=	true
	HideNSFW		bool	json:hideNSFW				=	false
	DisableRobots	bool	json:serverDisableRobots	=	true
	MaxWidth		uint16	json:maxWidth				=	6000
	MaxHeight		uint16	json:maxHeight				=	6000
	BoardExpiry		uint	json:boardExpiry			=	7
	SessionExpiry	uint	json:sessionExpiry			=	30
	RootURL			string	json:rootURL				=	'http://127.0.0.1'
	Salt			string	json:salt					=	'LALALALALALALALALALALALALALALALALALALALA'
	FeedbackEmail	string	json:feedbackEmail			=	'admin@email.com'
	FAQ				string	json:faq					=	'Supported upload file types are JPEG, PNG, APNG, WEBM, MP3, FLAC, MP4, OGG, PDF, ZIP, 7Z, TAR.GZ, TAR.XZ, RAR, CBZ, CBR.\n<hr>Encase text in:\n&emsp;** for spoilers\n&emsp;@@ for bold\n&emsp;~~ for italics\n&emsp;^r for red text\n&emsp;^b for blue text\n&emsp;` + "``" + ` for programing code highlighting\n<hr>Hash commands:\n#d100 #2d100 - Roll dice\n#flip - Coin flip\n#8ball - An 8ball\n#sw24:30 #sw2:24:30 #sw24:30+30 #sw24:30-30 - "Syncwatch" synchronized time counter'
	Instance		struct	{
		Debug		bool						=	true
		Database	string						=	'postgres://majo:majo@localhost:5432/majo?sslmode=disable'
		CacheSize	f64		json:cache_size		=	128
		Server		struct	{ Address string }	=	{ Address: ':8000' }
		Test		struct	{ Database string }	=	{ Database: 'postgres://majo:majo@localhost:5432/majo_test?sslmode=disable' }
	}
}

// Public stores publically available server configuration
pub struct Public {
	Mature				bool				json:mature				=	true
	UserBoards			bool				json:userBoards			=	true
	PruneThreads		bool				json:pruneThreads		=	true
	ThreadExpiryMin		uint				json:threadExpiryMin	=	7
	ThreadExpiryMax		uint				json:threadExpiryMax	=	14
	MaxSize				uint				json:maxSize			=	5
	DefaultLang			string				json:defaultLang		=	'en_US'
	DefaultCSS			string				json:defaultCSS			=	'ocean'
	ImageRootOverride	string				json:imageRootOverride
	Links				map[string]string	json:links				=	map[string]string{ '4chan': 'http://www.4chan.org/' }
}
