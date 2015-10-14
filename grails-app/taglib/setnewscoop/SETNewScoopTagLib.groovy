package setnewscoop

class SETNewScoopTagLib {
    static namespace = 'setnewscoop'

    def redirectPage = {attrs ->
        def uri = attrs.get('uri')
        response.sendRedirect("${request.contextPath}" + uri)
    }
}
