/<\/example>/ {
    getline 
    if (match($0, /<calloutlist>/)) {
        print "<!-- begin cofix -->" 
        while (!match($0, /<\/calloutlist>/)) {
            print
            if (getline <= 0) break
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
/<\/informalexample>/ {
    print "<!-- informal example -->"
    getline
    if (match($0, /<calloutlist>/)) {
        print "<!-- begin cofix -->"
        while (!match($0, /<\/calloutlist>/)) {
            print
            if (getline <= 0) break
        }
        print "</calloutlist>"
        print "</informalexample>"
        print "<!-- end cofix -->"
    } else {
        # no line option
        print "</informalexample>"
        print
    }
    next
}
{ print }
