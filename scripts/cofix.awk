/\<\/example\>/ {
    getline 
    if (match($0, /\<calloutlist\>/)) {
        print "<!-- begin cofix -->" 
        while (!match($0, /\<\/calloutlist\>/)) {
            print
            getline
        }
        print "</calloutlist>"
        print "</example>"
        print "<!-- end cofix -->"
    } else {
        # no line option
        print "</example>"
        print
    }
    next
}
{ print }
