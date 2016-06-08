1.	What are some common HTTP status codes?

	1xx is informational
	2xx is success
	3xx is redirection
	4xx is client error
	5xx is server error

	200: OK
	300: Multiple Choices
	301: Moved Permanently
	302: Found
	304: Not Modified
	307: Temporary Redirect
	400: Bad Request
	401: Unauthorized
	403: Forbidden
	404: Not Found
	410: Gone
	500: Internal Server Error
	501: Not Implemented
	503: Service Unavailable
	550: Permission Denied

2.	Difference between GET and POST requests. When to use each?
	
	The GET requests data from a specified resource
		can be cached
		remain in the browser history
		can be bookmarked
		should never be used when dealing with sensitive data
		have length restrictions
		should be used only to retrieve data

	The POST submits data to be processed to a specified resource
		are never cached
		do not remain in the browser histroy
		cannot be bookmarked
		have to restriction on data length

	GET should generally be used when allowing the user to view a page or submitting a request. GET also allows the user to reload and bookmark the page.

	POST should generally be used when you want the user to alter or add data to a database or a page. POST doesn't allow users to reload the page or bookmark it.