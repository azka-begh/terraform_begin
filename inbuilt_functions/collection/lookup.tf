terraform console

# lookup(map, key, default)

> lookup({key="value", book="binding"}, "book", "what?")
book

> lookup({key="value", book="binding"}, "ant", "what?")
what?
