class View {
    View parent
    List<View> children
    Font font

    constructor(View parent, Font font) {
        this.parent = parent
        this.font = font
        this.children = []
        if (parent != null) {
            parent.addChild(this)
        }
    }

    method addChild(View child) {
        children.append(child)
    }

    method render() {
        useFont(font)
        drawText("Hello, View Hierarchy!")
        for each child in children {
            child.render()
        }
    }
}

main method() {
    Font rootFont = new Font("Serif", BOLD, 20)
    View rootView = new View(null, rootFont)

    Font childFont = new Font("SansSerif", ITALIC, 16)
    View childView = new View(rootView, childFont)

    rootView.render()
}
